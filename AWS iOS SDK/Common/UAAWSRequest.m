//
//  UAAWSRequest.m
//  AWS iOS SDK
//
//  Created by Rob Amos on 30/01/2014.
//
//

#import "UAAWSRequest.h"
#import "UAAWSOperationQueue.h"
#import "UAAWSPayloadSerialisation.h"
#import "UAAWSRequestSigning.h"
#import "UAAWSError.h"
#import "UAAWSResponse.h"
#import "NSArray+UAArrayFlattening.h"
#import "UAHeaderMapping.h"

@interface UAAWSRequest ()

@property (nonatomic) NSUInteger UA_PollingAttempts;
@property (nonatomic, strong) UAAWSResponse *UA_Response;
@property (nonatomic, strong) NSError *UA_Error;
@property (nonatomic, strong) NSURLSessionDataTask *UA_DataTask;
@property (nonatomic, strong) NSString *UA_UserAgent;

- (void)UA_Poll;

/**
 * The number of seconds to wait (for wait operations) between polling attempts.
 *
 * Defaults to 15 seconds. Override if necessary.
 **/
- (NSTimeInterval)UA_PollingInterval;

/**
 * The maximum number of polling attempts to try.
 *
 * Defaults to 40. So 10 minutes with a 15 second polling interval.
 **/
- (NSUInteger)UA_PollingMaxAttempts;

- (NSURLRequest *)UA_Payload;

- (NSError *)UA_ErrorForHTTPResponse:(NSHTTPURLResponse *)response withResponseData:(NSData *)data;
- (UAAWSResponse *)UA_ResponseObjectForResponseData:(NSData *)data responseHeaders:(NSDictionary *)headers;
- (void)UA_SchedulePoll;
- (NSString *)UA_serializedRequestHeaderForPropertyKey:(NSString *)key withSerializer:(Class<UAAWSPayloadSerialisation>)serializer;

- (void)startDirtyPropertyObserving;
- (void)stopDirtyPropertyObserving;

@end

@interface UAAWSOperationQueue (Authentication)

- (UAAWSCredentials *)credentialsForRequest:(UAAWSRequest *)request;
- (UAAWSRegion)regionForRequest:(UAAWSRequest *)request;

@end

@implementation UAAWSRequest

@synthesize UA_CheckImmediately=_UA_CheckImmediately, UA_Error=_UA_Error, UA_Owner=_UA_Owner, UA_PollingAttempts=_UA_PollingAttempts, UA_Queue=_UA_Queue, UA_RequestCompletionBlock=_UA_RequestCompletionBlock, UA_Response=_UA_Response, UA_ShouldContinueWaiting=_UA_ShouldContinueWaiting, UA_DataTask=_UA_DataTask, UA_Credentials=_UA_Credentials, UA_Region=_UA_Region, UA_dirtyProperties=_UA_dirtyProperties, finished=_finished, executing=_executing, UA_UserAgent=_UA_UserAgent;

- (id)init
{
    if (self = [super init])
    {
        [self setUA_CheckImmediately:YES];
        [self setExecuting:NO];
        [self setFinished:NO];
        [self setUA_dirtyProperties:[[NSMutableArray alloc] initWithCapacity:0]];
        [self setQueuePriority:NSOperationQueuePriorityLow];
        [self startDirtyPropertyObserving];
        
        // set the initial user agent
        NSString *userAgent = [NSString stringWithFormat:@"ua-aws-sdk-ios/%@ %@/%@ %@",
                               UAAWSSDKVersion,
                               [[[UIDevice currentDevice] systemName] stringByReplacingOccurrencesOfString:@" " withString:@"-"],
                               [[UIDevice currentDevice] systemVersion],
                               [[NSLocale autoupdatingCurrentLocale] localeIdentifier]];
        [self setUA_UserAgent:userAgent];
    }
    return self;
}


// Override the completion block setter
- (void)setUA_RequestCompletionBlock:(UAAWSOperationCompletionBlock)UA_RequestCompletionBlock
{
    _UA_RequestCompletionBlock = UA_RequestCompletionBlock;
    
    // set the completion block to call their completion block on the main queue
    // -- if they've provided one
    if (UA_RequestCompletionBlock != nil)
    {
        __block UAAWSRequest *blockSelf = self;
        [self setCompletionBlock:^
        {
            // only if we're not cancelled at this stage
            __block UAAWSOperationCompletionBlock internalBlock = UA_RequestCompletionBlock;
            if (![blockSelf isCancelled] && internalBlock != nil)
            {
                dispatch_async(dispatch_get_main_queue(), ^
                {
                    internalBlock(blockSelf.UA_Response, blockSelf.UA_Error);
                });
            }
        }];

    } else
    {
        [self setCompletionBlock:nil];
    }
}

- (void)dealloc
{
    [self stopDirtyPropertyObserving];
}

- (void)invoke
{
    NSAssert(self.UA_RequestCompletionBlock != nil, @"Request block must be supplied before you can invoke request %@.", NSStringFromClass([self class]));

    [self setExecuting:NO];
    [self setFinished:NO];
    
    [[UAAWSOperationQueue sharedInstance] addRequest:self];
}

#pragma mark - Dirty Properties

- (void)startDirtyPropertyObserving
{
    NSSet *keys = [[self class] propertyKeys];
    if (keys != nil && [keys count] > 0)
    {
        for (NSString *key in keys)
            [self addObserver:self forKeyPath:key options:NSKeyValueObservingOptionNew context:nil];
    }
}

- (void)stopDirtyPropertyObserving
{
    NSSet *keys = [[self class] propertyKeys];
    if (keys != nil && [keys count] > 0)
    {
        for (NSString *key in keys)
            [self removeObserver:self forKeyPath:key];
    }
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
	if ([object isEqual:self] && ![self.UA_dirtyProperties containsObject:keyPath])
		[self.UA_dirtyProperties addObject:keyPath];
}


#pragma mark - NSOperation Bits and Bobs

- (BOOL)isConcurrent
{
    return YES;
}

- (void)cancel
{
    if ([self isFinished])
        return;
    
    // cancel the data task also
    if (self.UA_DataTask != nil)
        [self.UA_DataTask cancel];

    NSLog(@"[%@] Cancelling request.", NSStringFromClass([self class]));
    [super cancel];
}

#pragma mark - Polling and Waiting

// wait 15 seconds between polling cycles by default
- (NSTimeInterval)UA_PollingInterval
{
    return 15;
}

// try up to 8 times by default (so 2 minutes)
- (NSUInteger)UA_PollingMaxAttempts
{
    return 40;
}

#pragma mark - Execution

// Wrapper for non-concurrent operations
- (void)main
{
    [self start];
}

// Execute the operation!
- (void)start
{
    // firstly, have we been cancelled?
    if ([self isCancelled])
    {
        [self setFinished:YES];
        return;
    }
    
    // secondly, start executing
    [self setExecuting:YES];
    
    // fire the first (and often only) poll
    if ([self UA_CheckImmediately])
        [self UA_Poll];
    else
    {
        // delayed first poll
        [self UA_SchedulePoll];
    }
}

- (void)UA_SchedulePoll
{
    // we schedule polling on the main thread, basically it just re-adds a copy of this request back into the queue after the interval
    __block UAAWSRequest *blockSelf = self;
    dispatch_async(dispatch_get_main_queue(), ^
    {
        [[UAAWSOperationQueue sharedInstance] addRequest:[blockSelf copy] afterInterval:[self UA_PollingInterval]];
    });
}

// Execute the connection
- (void)UA_Poll
{
    NSAssert(self.UA_Queue != nil, @"You must run each UAAWSRequest on a UAAWSOperationQueue.");
    NSAssert(self.UA_RequestCompletionBlock != nil, @"-requestCompletionBlock must be set before you can execute a UAAWSRequest.");
    NSAssert([self conformsToProtocol:@protocol(UAAWSRequest)], @"Your UAAWSRequest must conform to the <UAAWSRequest> protocol.");

    UAAWSOperationQueue *queue = self.UA_Queue;

    // have we been cancelled?
    if ([self isCancelled])
    {
        [self setFinished:YES];
        [self setExecuting:NO];
        return;
    }
    
    // Lets go!
    NSLog(@"-[%@] Executing request (Attempt #%lu).", NSStringFromClass([self class]), (unsigned long)self.UA_PollingAttempts);
    __block UAAWSRequest *blockSelf = self;
    [self setUA_DataTask:[queue.session dataTaskWithRequest:[self UA_Payload] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error)
    {
        // before we continue, check again for the cancellation
        if ([blockSelf isCancelled] || (error != nil && error.code == NSURLErrorCancelled))
        {
            NSLog(@"-[%@] Ignoring response because cancelled.", NSStringFromClass([self class]));
            [blockSelf setExecuting:NO];
            [blockSelf setFinished:YES];
            return;
        }
        
        // Its always over HTTP, duh. I thought NSURLSession was for HTTP only? Why not be more specific in the block signature?
        NSHTTPURLResponse *httpResponse = (NSHTTPURLResponse *)response;
//        NSLog(@"-[%@] Received response (%li): %@", NSStringFromClass([self class]), (long)httpResponse.statusCode, [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding]);

        // Now we set stuff based on what happened
        NSError *apiError = nil;
        UAAWSResponse *apiResponse = nil;
        
        // Parse the result
        if (httpResponse.statusCode >= 400)
            apiError = [blockSelf UA_ErrorForHTTPResponse:httpResponse withResponseData:data];
        else
            apiResponse = [blockSelf UA_ResponseObjectForResponseData:data responseHeaders:httpResponse.allHeaderFields];
        
        
        // Great! Now, if we're waiting for a result we should check with our waiting block
        blockSelf.UA_PollingAttempts++;
        if (blockSelf.UA_ShouldContinueWaiting != nil && blockSelf.UA_PollingAttempts < [blockSelf UA_PollingMaxAttempts])
        {
            UAAWSOperationShouldContinueWaitingBlock waitingBlock = blockSelf.UA_ShouldContinueWaiting;
            if (waitingBlock(apiResponse, apiError))
            {
                NSLog(@"-[%@] Waiting.", NSStringFromClass([blockSelf class]));
                [blockSelf UA_SchedulePoll];
                [blockSelf setExecuting:NO];
                [blockSelf setFinished:YES];
                return;
            }
        }

        NSLog(@"-[%@] Request complete.", NSStringFromClass([self class]));

        // All done! Set the properties and let the -completionBlock handle it from here.
        [blockSelf setUA_Error:apiError];
        [blockSelf setUA_Response:apiResponse];
        [blockSelf setExecuting:NO];
        [blockSelf setFinished:YES];
        
        
    }]];
    
    // fire!
    [self.UA_DataTask resume];
}

// Generate the request payload
- (NSURLRequest *)UA_Payload
{
    // Obtain credentials
    UAAWSOperationQueue *queue = self.UA_Queue;
    UAAWSCredentials *credentials = self.UA_Credentials ?: [queue credentialsForRequest:self];
    UAAWSRegion region = self.UA_Region ?: [queue regionForRequest:self];
    
    // We need to have credentials, at least
    NSAssert(credentials != nil, @"Credentials must be supplied via -setUA_Credentials: or the UAAWSOperationQueue delegate.");

    UAAWSRequest<UAAWSRequest> *protocolSelf = (UAAWSRequest<UAAWSRequest> *)self;

    // if the service is region-free/global, lock it down to US-East-1
    if ([protocolSelf UA_isRegionFree])
        region = UAAWSRegionUSEast1;

    // obtain the base URL for connection
    NSURL *baseURL = [protocolSelf UA_EndpointURLForRegion:region];
    
    // and the protocol
    NSString *apiVersion = nil;
    
//    // do we have it locally?
//    if ([self respondsToSelector:@selector(version)])
//        apiVersion = [self performSelector:@selector(version)];
//    
//    // otherwise, use the service one
//    else
        apiVersion = [protocolSelf UA_APIVersion];
    
    // and so, grab the request path
    NSString *requestPath = [protocolSelf UA_RequestPath];
    
    Class serialiser = [protocolSelf UA_RequestSerialisationClass];
    NSAssert(serialiser != Nil, @"Request serialisation class cannot be Nil.");
    NSAssert([serialiser conformsToProtocol:@protocol(UAAWSPayloadSerialisation)], @"Request serialisation class %@ does not conform to protocol UAAWSPayloadSerialisation.", NSStringFromClass(serialiser));

    NSError *error = nil;
    NSData *requestBody = [((Class<UAAWSPayloadSerialisation>)serialiser) dataForRequest:self error:&error];
    
    NSURL *targetURL = [NSURL URLWithString:requestPath relativeToURL:baseURL];
    
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] initWithURL:targetURL];
    [request setHTTPMethod:[protocolSelf UA_RequestHTTPMethod]];

    // set the content type as appropriate
    NSString *contentType = [((Class<UAAWSPayloadSerialisation>)serialiser) contentType];
    if (contentType != nil)
        [request addValue:contentType forHTTPHeaderField:@"Content-Type"];
    
    // do we have custom header fields?
    if ([self conformsToProtocol:@protocol(UAHeaderMapping)])
    {
        NSDictionary *mappings = [[((UAAWSRequest<UAHeaderMapping> *)self) class] UAHeaderMappingsByPropertyKey];
        if (mappings != nil && [mappings count] > 0)
        {
            // go through mapping them over and setting our headers
            for (NSString *propertyKey in mappings)
            {
                NSString *headerValue = [self UA_serializedRequestHeaderForPropertyKey:propertyKey withSerializer:serialiser];
                if (headerValue != nil)
                    [request addValue:headerValue forHTTPHeaderField:[mappings objectForKey:propertyKey]];
            }
        }
    }
    
    // Set the body
    [request setHTTPBody:requestBody];
    
    // and the user agent
    [request addValue:self.UA_UserAgent forHTTPHeaderField:@"User-Agent"];
    
    // now the last thing we need to do is sign the request
    [UAAWSRequestSigning signURLRequest:request ofRequest:protocolSelf inRegion:region withCredentials:credentials];
    NSLog(@"-[%@] Posting request to %@: %@", NSStringFromClass([self class]), targetURL, [[NSString alloc] initWithData:request.HTTPBody encoding:NSUTF8StringEncoding]);
    return request;
}

- (NSString *)UA_serializedRequestHeaderForPropertyKey:(NSString *)key withSerializer:(Class<UAAWSPayloadSerialisation>)serializer
{
    // we need to serialise this down to a string for inclusion with the request header.
    NSObject<UAMTLModel> *property = [self valueForKey:key];
    if (property == nil)
        return nil;
    
    // already a string?
    if ([property isKindOfClass:[NSString class]])
        return (NSString *)property;
    
    NSAssert([property conformsToProtocol:@protocol(UAMTLModel)], @"Model for property key %@ to be serialized into a request header does not conform to <UAMTLModel>.", key);
    
    NSString *serialized = [serializer stringForModel:property error:nil];
    return serialized;
}

#pragma mark - Response Parsing

- (NSError *)UA_ErrorForHTTPResponse:(NSHTTPURLResponse *)response withResponseData:(NSData *)data
{
    UAAWSRequest<UAAWSRequest> *protocolSelf = (UAAWSRequest<UAAWSRequest> *)self;
    Class serialiser = [protocolSelf UA_ResponseSerialisationClass];
    NSAssert(serialiser != Nil, @"Response serialisation class cannot be Nil.");
    NSAssert([serialiser conformsToProtocol:@protocol(UAAWSPayloadSerialisation)], @"Request serialisation class %@ does not conform to protocol UAAWSPayloadSerialisation.", NSStringFromClass(serialiser));
    
    Class errorClass = [protocolSelf UA_ErrorClass];
    NSAssert(errorClass != Nil, @"Error class cannot be Nil.");
    NSAssert([errorClass conformsToProtocol:@protocol(UAAWSError)], @"Request serialisation class %@ does not conform to protocol UAAWSError.", NSStringFromClass(serialiser));
    
    // did we end up with no data?
    if (data.length == 0)
        return [NSError errorWithDomain:UAAWSErrorDomain code:UAAWSErrorCodeNilData userInfo:@{ NSLocalizedDescriptionKey: @"The AWS API returned an empty response." }];
    
    NSError *parseError = nil;
    id<UAAWSError> error = (id<UAAWSError>)[((Class<UAAWSPayloadSerialisation>)serialiser) responseForData:data responseClass:errorClass error:&parseError];

    // if we ended up with a parse error return that to the user
    if (parseError != nil)
    {
        @throw [NSException exceptionWithName:UAAWSResponseExceptionParseError
                                       reason:@"Parse error occured when attempting to parse error response."
                                     userInfo:@{
                                                UAAWSResponseExceptionParseErrorURLResponseKey: response,
                                                UAAWSResponseExceptionParseErrorDataKey: data,
                                                UAAWSResponseExceptionParseErrorErrorKey: parseError }];
    }
    
    // set the status code
    [error setHTTPStatusCode:response.statusCode];
    
    // otherwise, return the API error
    return [error errorObject];
}

- (UAAWSResponse *)UA_ResponseObjectForResponseData:(NSData *)data responseHeaders:(NSDictionary *)headers
{
    UAAWSRequest<UAAWSRequest> *protocolSelf = (UAAWSRequest<UAAWSRequest> *)self;
    Class serialiser = [protocolSelf UA_ResponseSerialisationClass];
    NSAssert(serialiser != Nil, @"Response serialisation class cannot be Nil.");
    NSAssert([serialiser conformsToProtocol:@protocol(UAAWSPayloadSerialisation)], @"Response serialisation class %@ does not conform to protocol UAAWSPayloadSerialisation.", NSStringFromClass(serialiser));
    
    Class responseClass = [protocolSelf UA_ResponseClass];
    NSAssert(responseClass != Nil, @"Response class cannot be Nil.");
    NSAssert([responseClass isSubclassOfClass:[UAAWSResponse class]], @"Response class %@ must be a subclass of UAAWSResponse.", NSStringFromClass(responseClass));
    
    // nil data is an error, but not an exception
    if (data.length == 0)
        return nil;
    
    // parse it
    NSError *error = nil;
    UAAWSResponse *response = [((Class<UAAWSPayloadSerialisation>)serialiser) responseForData:data responseClass:responseClass error:&error];
    
    // did we end up with an error?
    if (error != nil)
    {
        @throw [NSException exceptionWithName:UAAWSResponseExceptionParseError
                                       reason:@"Parse error occured when attempting to parse response."
                                     userInfo:@{
                                                UAAWSResponseExceptionParseErrorDataKey: data,
                                                UAAWSResponseExceptionParseErrorErrorKey: error }];
    }
    
    // populate any headers as required
    [response UAPopulateMappingsForHeaders:headers];
    
    // all good!
    return response;
}

#pragma mark - Waiting Blocks

+ (UAAWSOperationShouldContinueWaitingBlock)UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)values
{
    UAAWSOperationShouldContinueWaitingBlock shouldContinueWaiting = ^BOOL(UAAWSResponse *response, NSError *error)
    {
        // we stop waiting on any error
        if (error != nil || response == nil)
            return NO;
        
        // see if we can find any matching rows on the keyPath
        @try
        {
            id value = [response valueForKeyPath:keyPath];
            
            // is the value an array?
            if ([value isKindOfClass:[NSArray class]])
            {
                // stop waiting when any of the matching objects is in the values list
                NSArray *valueList = [((NSArray *)value) UA_flattenedArray];
                for (id obj in valueList)
                {
                    // should not continue waiting
                    if ([values containsObject:obj])
                        return NO;
                }
                return YES; // keep waiting
                
                // otherwise, stop waiting when the returned value is in the list
            } else
            {
                return ![values containsObject:value];
            }
        }
        
        // can't find the keypath?
        @catch (NSException *e)
        {
            return NO;
        }
    };
    
    return shouldContinueWaiting;
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAAWSOperationCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAAWSOperationShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAAWSOperationCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAAWSOperationCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

#pragma mark - Additional Accessors

+ (NSDictionary *)UA_additionalAccessors
{
    return nil;
}

+ (NSDictionary *)UA_additionalAccessorDataTypes
{
    return nil;
}

#pragma mark - Execution Control

- (BOOL)isFinished
{
    return _finished;
}

- (void)setFinished:(BOOL)finished
{
    [self willChangeValueForKey:@"isFinished"];
    _finished = finished;
    [self didChangeValueForKey:@"isFinished"];
}

- (BOOL)isExecuting
{
    return _executing;
}

- (void)setExecuting:(BOOL)executing
{
    [self willChangeValueForKey:@"isExecuting"];
    _executing = executing;
    [self didChangeValueForKey:@"isExecuting"];
}



@end
