//
//  UASQSReceiveMessageRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UASQSReceiveMessageRequest.h"
#import "UASQSReceiveMessageResponse.h"

@interface UASQSReceiveMessageRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UASQSReceiveMessageRequest

@synthesize action=_action, version=_version, queueUrl=_queueUrl, attributeNames=_attributeNames, maxNumberOfMessages=_maxNumberOfMessages, visibilityTimeout=_visibilityTimeout, waitTimeSeconds=_waitTimeSeconds;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"ReceiveMessage"];
		[self setVersion:@"2012-11-05"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UASQSReceiveMessageResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UASQSRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"queueUrl": @"QueueUrl",
        @"attributeNames": @"AttributeName",
        @"maxNumberOfMessages": @"MaxNumberOfMessages",
        @"visibilityTimeout": @"VisibilityTimeout",
        @"waitTimeSeconds": @"WaitTimeSeconds"
    }];
    return [keyPaths copy];
}

- (NSString *)attributeNameAtIndex:(NSUInteger)index
{
    if (self.attributeNames == nil || index >= ([self.attributeNames count]-1))
        return nil;

    return [self.attributeNames objectAtIndex:index];
}

- (void)setAction:(NSString *)action
{
	_action = action;
	
	if (![self.UA_dirtyProperties containsObject:@"action"])
		[self.UA_dirtyProperties addObject:@"action"];
}

- (void)setVersion:(NSString *)version
{
	_version = version;
	
	if (![self.UA_dirtyProperties containsObject:@"version"])
		[self.UA_dirtyProperties addObject:@"version"];
}

- (void)setQueueUrl:(NSString *)queueUrl
{
	_queueUrl = queueUrl;
	
	if (![self.UA_dirtyProperties containsObject:@"queueUrl"])
		[self.UA_dirtyProperties addObject:@"queueUrl"];
}

- (void)setAttributeNames:(NSMutableArray *)attributeNames
{
	_attributeNames = attributeNames;
	
	if (![self.UA_dirtyProperties containsObject:@"attributeNames"])
		[self.UA_dirtyProperties addObject:@"attributeNames"];
}

- (void)setMaxNumberOfMessages:(NSNumber *)maxNumberOfMessages
{
	_maxNumberOfMessages = maxNumberOfMessages;
	
	if (![self.UA_dirtyProperties containsObject:@"maxNumberOfMessages"])
		[self.UA_dirtyProperties addObject:@"maxNumberOfMessages"];
}

- (void)setVisibilityTimeout:(NSNumber *)visibilityTimeout
{
	_visibilityTimeout = visibilityTimeout;
	
	if (![self.UA_dirtyProperties containsObject:@"visibilityTimeout"])
		[self.UA_dirtyProperties addObject:@"visibilityTimeout"];
}

- (void)setWaitTimeSeconds:(NSNumber *)waitTimeSeconds
{
	_waitTimeSeconds = waitTimeSeconds;
	
	if (![self.UA_dirtyProperties containsObject:@"waitTimeSeconds"])
		[self.UA_dirtyProperties addObject:@"waitTimeSeconds"];
}

- (void)addAttributeName:(NSString *)attributeName
{
	if (self.attributeNames == nil)
		[self setAttributeNames:[NSMutableArray array]];
	[self.attributeNames addObject:attributeName];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UASQSReceiveMessageRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UASQSReceiveMessageRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UASQSReceiveMessageRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UASQSReceiveMessageRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
