//
//  UASNSSetSubscriptionAttributesRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UASNSSetSubscriptionAttributesRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UASNSSetSubscriptionAttributesResponse.h"

@interface UASNSSetSubscriptionAttributesRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UASNSSetSubscriptionAttributesRequest

@synthesize action=_action, version=_version, subscriptionARN=_subscriptionARN, attributeName=_attributeName, attributeValue=_attributeValue;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"SetSubscriptionAttributes"];
		[self setVersion:@"2010-03-31"];
		
		
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UASNSSetSubscriptionAttributesResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UASNSRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"subscriptionARN": @"SubscriptionArn",
        @"attributeName": @"AttributeName",
        @"attributeValue": @"AttributeValue"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)attributeNameJSONTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UASNSSubscriptionAttributeDeliveryPolicy), @(UASNSSubscriptionAttributeRawMessageDelivery) ]
                                               stringValues:@[ @"DeliveryPolicy", @"RawMessageDelivery" ]
                                               unknownValue:@(UASNSSubscriptionAttributeUnknown)];
}

+ (NSValueTransformer *)attributeNameQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UASNSSubscriptionAttributeDeliveryPolicy), @(UASNSSubscriptionAttributeRawMessageDelivery) ]
                                               stringValues:@[ @"DeliveryPolicy", @"RawMessageDelivery" ]
                                               unknownValue:@(UASNSSubscriptionAttributeUnknown)];
}

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UASNSSetSubscriptionAttributesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UASNSSetSubscriptionAttributesRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UASNSSetSubscriptionAttributesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UASNSSetSubscriptionAttributesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop