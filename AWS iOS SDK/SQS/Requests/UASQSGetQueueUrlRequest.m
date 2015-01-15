//
//  UASQSGetQueueURLRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UASQSGetQueueURLRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UASQSGetQueueURLResponse.h"

@interface UASQSGetQueueURLRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UASQSGetQueueURLRequest

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
	return [UASQSGetQueueURLResponse class];
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

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UASQSGetQueueURLRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UASQSGetQueueURLRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UASQSGetQueueURLRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UASQSGetQueueURLRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop