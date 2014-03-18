//
//  UASQSChangeMessageVisibilityRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UASQSChangeMessageVisibilityRequest.h"
#import "UASQSChangeMessageVisibilityResponse.h"

@interface UASQSChangeMessageVisibilityRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UASQSChangeMessageVisibilityRequest

@synthesize action=_action, version=_version, queueUrl=_queueUrl, receiptHandle=_receiptHandle, visibilityTimeout=_visibilityTimeout;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"ChangeMessageVisibility"];
		[self setVersion:@"2012-11-05"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UASQSChangeMessageVisibilityResponse class];
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
        @"receiptHandle": @"ReceiptHandle",
        @"visibilityTimeout": @"VisibilityTimeout"
    }];
    return [keyPaths copy];
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

- (void)setReceiptHandle:(NSString *)receiptHandle
{
	_receiptHandle = receiptHandle;
	
	if (![self.UA_dirtyProperties containsObject:@"receiptHandle"])
		[self.UA_dirtyProperties addObject:@"receiptHandle"];
}

- (void)setVisibilityTimeout:(NSNumber *)visibilityTimeout
{
	_visibilityTimeout = visibilityTimeout;
	
	if (![self.UA_dirtyProperties containsObject:@"visibilityTimeout"])
		[self.UA_dirtyProperties addObject:@"visibilityTimeout"];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UASQSChangeMessageVisibilityRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UASQSChangeMessageVisibilityRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UASQSChangeMessageVisibilityRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UASQSChangeMessageVisibilityRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
