//
//  UAEC2PurchaseReservedInstancesOfferingRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2PurchaseReservedInstancesOfferingRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2PurchaseReservedInstancesOfferingResponse.h"
#import "UAEC2ReservedInstanceLimitPrice.h"

@interface UAEC2PurchaseReservedInstancesOfferingRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2PurchaseReservedInstancesOfferingRequest

@synthesize action=_action, version=_version, dryRun=_dryRun, reservedInstancesOfferingID=_reservedInstancesOfferingID, instanceCount=_instanceCount, limitPrice=_limitPrice;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"PurchaseReservedInstancesOffering"];
		[self setVersion:@"2014-10-01"];
		
		
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAEC2PurchaseReservedInstancesOfferingResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Request queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"dryRun": @"DryRun",
        @"reservedInstancesOfferingID": @"ReservedInstancesOfferingId",
        @"instanceCount": @"InstanceCount",
        @"limitPrice": @"LimitPrice"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)limitPriceJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONDictionaryTransformerWithModelClass:[UAEC2ReservedInstanceLimitPrice class]];
}

+ (NSValueTransformer *)dryRunQueryStringTransformer
{
    return [UAMTLValueTransformer UA_JSONTransformerForBooleanString];
}

+ (NSValueTransformer *)limitPriceQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UAEC2ReservedInstanceLimitPrice class]];
}

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAEC2PurchaseReservedInstancesOfferingRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAEC2PurchaseReservedInstancesOfferingRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAEC2PurchaseReservedInstancesOfferingRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAEC2PurchaseReservedInstancesOfferingRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop