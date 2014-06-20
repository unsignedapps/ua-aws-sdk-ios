//
//  UASNSUnsubscribeRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UASNSUnsubscribeRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UASNSUnsubscribeResponse.h"

@interface UASNSUnsubscribeRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UASNSUnsubscribeRequest

@synthesize action=_action, version=_version, subscriptionARN=_subscriptionARN;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"Unsubscribe"];
		[self setVersion:@"2010-03-31"];
		
		
	}
	return self;
}

- (id)initWithSubscriptionARN:(NSString *)subscriptionARN
{
	if (self = [self init])
	{
		[self setSubscriptionARN:subscriptionARN];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UASNSUnsubscribeResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UASNSRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"subscriptionARN": @"SubscriptionArn"
    }];
    return [keyPaths copy];
}

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UASNSUnsubscribeRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UASNSUnsubscribeRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UASNSUnsubscribeRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UASNSUnsubscribeRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop