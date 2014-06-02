//
//  UASQSDeleteMessageRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UASQSDeleteMessageRequest.h"
#import "UASQSDeleteMessageResponse.h"

@interface UASQSDeleteMessageRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UASQSDeleteMessageRequest

@synthesize action=_action, version=_version, queueUrl=_queueUrl, receiptHandle=_receiptHandle;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"DeleteMessage"];
		[self setVersion:@"2012-11-05"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UASQSDeleteMessageResponse class];
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
        @"receiptHandle": @"ReceiptHandle"
    }];
    return [keyPaths copy];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UASQSDeleteMessageRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UASQSDeleteMessageRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UASQSDeleteMessageRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UASQSDeleteMessageRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
