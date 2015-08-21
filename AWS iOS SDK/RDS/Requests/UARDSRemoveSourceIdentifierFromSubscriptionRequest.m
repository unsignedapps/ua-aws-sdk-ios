//
//  UARDSRemoveSourceIdentifierFromSubscriptionRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSRemoveSourceIdentifierFromSubscriptionRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UARDSEventSubscriptionResponse.h"

@interface UARDSRemoveSourceIdentifierFromSubscriptionRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UARDSRemoveSourceIdentifierFromSubscriptionRequest

@synthesize action=_action, version=_version, subscriptionName=_subscriptionName, sourceIdentifier=_sourceIdentifier;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"RemoveSourceIdentifierFromSubscription"];
		[self setVersion:@"2014-10-31"];
		
		
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UARDSEventSubscriptionResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UARDSRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"subscriptionName": @"SubscriptionName",
        @"sourceIdentifier": @"SourceIdentifier"
    }];
    return [keyPaths copy];
}

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UARDSRemoveSourceIdentifierFromSubscriptionRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UARDSRemoveSourceIdentifierFromSubscriptionRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UARDSRemoveSourceIdentifierFromSubscriptionRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UARDSRemoveSourceIdentifierFromSubscriptionRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop