//
//  UARDSModifyEventSubscriptionRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSModifyEventSubscriptionRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UARDSEventSubscriptionResponse.h"

@interface UARDSModifyEventSubscriptionRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UARDSModifyEventSubscriptionRequest

@synthesize action=_action, version=_version, subscriptionName=_subscriptionName, snsTopicARN=_snsTopicARN, sourceType=_sourceType, eventCategories=_eventCategories, enabled=_enabled;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"ModifyEventSubscription"];
		[self setVersion:@"2014-10-31"];
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(eventCategoryAtIndex:) propertyName:@"eventCategories"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addEventCategory:) propertyName:@"eventCategories"];
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
        @"snsTopicARN": @"SnsTopicArn",
        @"sourceType": @"SourceType",
        @"eventCategories": @"EventCategories.member",
        @"enabled": @"Enabled"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)sourceTypeJSONTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UARDSSourceTypeDbInstance), @(UARDSSourceTypeDbParameterGroup), @(UARDSSourceTypeDbSecurityGroup), @(UARDSSourceTypeDbSnapshot) ]
                                               stringValues:@[ @"db-instance", @"db-parameter-group", @"db-security-group", @"db-snapshot" ]
                                               unknownValue:@(UARDSSourceTypeUnknown)];
}

+ (NSValueTransformer *)sourceTypeQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UARDSSourceTypeDbInstance), @(UARDSSourceTypeDbParameterGroup), @(UARDSSourceTypeDbSecurityGroup), @(UARDSSourceTypeDbSnapshot) ]
                                               stringValues:@[ @"db-instance", @"db-parameter-group", @"db-security-group", @"db-snapshot" ]
                                               unknownValue:@(UARDSSourceTypeUnknown)];
}

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UARDSModifyEventSubscriptionRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UARDSModifyEventSubscriptionRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UARDSModifyEventSubscriptionRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UARDSModifyEventSubscriptionRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop