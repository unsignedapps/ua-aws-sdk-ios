//
//  UASQSGetQueueUrlRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UASQSGetQueueUrlRequest.h"
#import "UASQSGetQueueUrlResponse.h"

@interface UASQSGetQueueUrlRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UASQSGetQueueUrlRequest

@synthesize action=_action, version=_version, queueName=_queueName, queueOwnerAWSAccountID=_queueOwnerAWSAccountID;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"GetQueueUrl"];
		[self setVersion:@"2012-11-05"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UASQSGetQueueUrlResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UASQSRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"queueName": @"QueueName",
        @"queueOwnerAWSAccountID": @"QueueOwnerAWSAccountId"
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

- (void)setQueueName:(NSString *)queueName
{
	_queueName = queueName;
	
	if (![self.UA_dirtyProperties containsObject:@"queueName"])
		[self.UA_dirtyProperties addObject:@"queueName"];
}

- (void)setQueueOwnerAWSAccountID:(NSString *)queueOwnerAWSAccountID
{
	_queueOwnerAWSAccountID = queueOwnerAWSAccountID;
	
	if (![self.UA_dirtyProperties containsObject:@"queueOwnerAWSAccountID"])
		[self.UA_dirtyProperties addObject:@"queueOwnerAWSAccountID"];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UASQSGetQueueUrlRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UASQSGetQueueUrlRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UASQSGetQueueUrlRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UASQSGetQueueUrlRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
