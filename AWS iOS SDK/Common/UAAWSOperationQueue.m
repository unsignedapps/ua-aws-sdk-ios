//
//  UAAWSOperationQueue.m
//  Kestrel
//
//  Created by Rob Amos on 3/10/2013.
//  Copyright (c) 2013 Desto. All rights reserved.
//

#import "UAAWSOperationQueue.h"
#import "UAAWSRequest.h"
#import "UAAWSRegion.h"
#import "UAAWSCredentials.h"

#pragma mark Private Methods

@interface UAAWSOperationQueue ()

// keep an array of request adding timers
@property (nonatomic, strong) NSMutableArray *timers;

- (UAAWSCredentials *)credentialsForRequest:(UAAWSRequest *)request error:(NSError *__autoreleasing *)error;
- (UAAWSRegion)regionForRequest:(UAAWSRequest *)request;
- (void)addRequestFromTimer:(NSTimer *)timer;

@end

#pragma mark - Implementation

@implementation UAAWSOperationQueue

@synthesize cancelled=_cancelled, delegate=_delegate, session=_session, timers=_timers;

+ (id)sharedInstance
{
    static dispatch_once_t onceToken;
    static UAAWSOperationQueue *awsQueue;
    dispatch_once(&onceToken, ^
    {
        awsQueue = [[UAAWSOperationQueue alloc] init];
    });
    return awsQueue;
}

// Initialisation
- (id)init
{
    if (self = [super init])
    {
        // we're not cancelled when we start
        [self setCancelled:NO];
        
        // nor suspended
        [self setSuspended:NO];
        
        // Create a NSURLSession for our use, private browsing style
        NSURLSessionConfiguration *privateBrowsing = [NSURLSessionConfiguration ephemeralSessionConfiguration];
        [self setSession:[NSURLSession sessionWithConfiguration:privateBrowsing delegate:self delegateQueue:self]];
        
        // an array for request adding timers
        [self setTimers:[[NSMutableArray alloc] initWithCapacity:0]];
    }
    return self;
}

#pragma mark - Adding operations

- (void)addRequest:(UAAWSRequest *)request
{
    [request setUA_Queue:self];
    [self addOperation:request];
}

- (void)addRequests:(NSArray *)requests waitUntilFinished:(BOOL)wait
{
    for (UAAWSRequest *request in requests)
        [request setUA_Queue:self];
    [self addOperations:requests waitUntilFinished:wait];
}

- (void)addRequestFromTimer:(NSTimer *)timer
{
    NSAssert(timer.userInfo != nil, @"You must supply the UAAWSRequest object as the timer's userInfo parameter when adding a request from a timer.");
    NSAssert([timer.userInfo isKindOfClass:[UAAWSRequest class]], @"The timer object's userInfo parameter must be an UAAWSRequest object when adding a request from a timer.");
    UAAWSRequest *request = (UAAWSRequest *)timer.userInfo;
    [self addRequest:request];
    
    // remove it from the list now
    if ([self.timers containsObject:timer])
        [self.timers removeObject:timer];
}

- (void)addRequest:(UAAWSRequest *)request afterInterval:(NSTimeInterval)interval
{
    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:interval target:self selector:@selector(addRequestFromTimer:) userInfo:request repeats:NO];
    [self.timers addObject:timer];
}

#pragma mark - Execution Management

- (void)cancel
{
    [self setCancelled:YES];
    [self cancelAllOperations];
}

- (void)cancelAllRequestsForOwner:(id)owner
{
    if (owner == nil || [self operationCount] == 0)
        return;
    
    // cancel operations in the queue
    for (NSOperation *op in self.operations)
    {
        if ([op isKindOfClass:[UAAWSRequest class]])
        {
            UAAWSRequest *request = (UAAWSRequest *)op;
            id innerOwner = request.UA_Owner;
            if (innerOwner != nil && [innerOwner isEqual:owner])
                [request cancel];
        }
    }
    
    // cancel operations that are scheduled to be added
    for (NSTimer *timer in self.timers)
    {
        UAAWSRequest *request = (UAAWSRequest *)timer.userInfo;
        id innerOwner = request.UA_Owner;
        if (innerOwner != nil && [innerOwner isEqual:owner])
        {
            [request cancel];
            [timer invalidate];
            [self.timers removeObject:timer];
        }
    }
}

#pragma mark - Authentication Management

- (UAAWSCredentials *)credentialsForRequest:(UAAWSRequest<UAAWSRequest> *)request error:(NSError *__autoreleasing *)error
{
    __block UAAWSCredentials *credentials = nil;
    __block id<UAAWSOperationAuthenticationDelegate> delegate = self.delegate;
    
    dispatch_sync(dispatch_get_global_queue( DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^
    {
        if (delegate != nil && [delegate respondsToSelector:@selector(credentialsForRequest:error:)])
            credentials = [delegate credentialsForRequest:request error:error];
    });
    return credentials;
}

- (UAAWSRegion)regionForRequest:(UAAWSRequest *)request
{
    id<UAAWSOperationAuthenticationDelegate> delegate = self.delegate;
    if (delegate != nil && [delegate respondsToSelector:@selector(regionForRequest:)])
        return [delegate regionForRequest:request];
    return UAAWSRegionUnknown;
}


#pragma mark - NSURLSessionDelegate Methods

- (void)URLSession:(NSURLSession *)session didBecomeInvalidWithError:(NSError *)error
{
    NSLog(@"[%@] UAAWSOperationQueue's NSURLSession became invalid because %@", self, error);
    NSURLSessionConfiguration *privateBrowsing = [NSURLSessionConfiguration ephemeralSessionConfiguration];
    [self setSession:[NSURLSession sessionWithConfiguration:privateBrowsing delegate:self delegateQueue:self]];
}

@end
