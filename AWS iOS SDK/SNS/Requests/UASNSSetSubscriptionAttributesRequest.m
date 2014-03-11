//
//  UASNSSetSubscriptionAttributesRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UASNSSetSubscriptionAttributesRequest.h"
#import "UASNSSetSubscriptionAttributesResponse.h"

@interface UASNSSetSubscriptionAttributesRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

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

- (void)setSubscriptionARN:(NSString *)subscriptionARN
{
	_subscriptionARN = subscriptionARN;
	
	if (![self.UA_dirtyProperties containsObject:@"subscriptionARN"])
		[self.UA_dirtyProperties addObject:@"subscriptionARN"];
}

- (void)setAttributeName:(UASNSSubscriptionAttribute)attributeName
{
	_attributeName = attributeName;
	
	if (![self.UA_dirtyProperties containsObject:@"attributeName"])
		[self.UA_dirtyProperties addObject:@"attributeName"];
}

- (void)setAttributeValue:(NSString *)attributeValue
{
	_attributeValue = attributeValue;
	
	if (![self.UA_dirtyProperties containsObject:@"attributeValue"])
		[self.UA_dirtyProperties addObject:@"attributeValue"];
}

+ (NSValueTransformer *)attributeNameJSONTransformer
{
    return [UAMTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value)
    {
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"DeliveryPolicy"])
		    return @(UASNSSubscriptionAttributeDeliveryPolicy);
		if ([value isEqualToString:@"RawMessageDelivery"])
		    return @(UASNSSubscriptionAttributeRawMessageDelivery);

		return @(UASNSSubscriptionAttributeUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UASNSSubscriptionAttribute castValue = (UASNSSubscriptionAttribute)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UASNSSubscriptionAttributeDeliveryPolicy:
			    return @"DeliveryPolicy";
			case UASNSSubscriptionAttributeRawMessageDelivery:
			    return @"RawMessageDelivery";

			case UASNSSubscriptionAttributeUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)attributeNameQueryStringTransformer
{
    return [UAMTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value)
    {
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"DeliveryPolicy"])
		    return @(UASNSSubscriptionAttributeDeliveryPolicy);
		if ([value isEqualToString:@"RawMessageDelivery"])
		    return @(UASNSSubscriptionAttributeRawMessageDelivery);

		return @(UASNSSubscriptionAttributeUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UASNSSubscriptionAttribute castValue = (UASNSSubscriptionAttribute)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UASNSSubscriptionAttributeDeliveryPolicy:
			    return @"DeliveryPolicy";
			case UASNSSubscriptionAttributeRawMessageDelivery:
			    return @"RawMessageDelivery";

			case UASNSSubscriptionAttributeUnknown:
			default:
				return nil;
        }
    }];
}

#pragma mark - Invocation

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

@end
