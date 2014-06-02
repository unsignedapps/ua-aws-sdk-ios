//
//  UASQSSendMessageRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UASQSSendMessageRequest.h"
#import "UASQSSendMessageResponse.h"

@interface UASQSSendMessageRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UASQSSendMessageRequest

@synthesize action=_action, version=_version, queueUrl=_queueUrl, messageBody=_messageBody, delaySeconds=_delaySeconds;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"SendMessage"];
		[self setVersion:@"2012-11-05"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UASQSSendMessageResponse class];
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
        @"messageBody": @"MessageBody",
        @"delaySeconds": @"DelaySeconds"
    }];
    return [keyPaths copy];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UASQSSendMessageRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UASQSSendMessageRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UASQSSendMessageRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UASQSSendMessageRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
