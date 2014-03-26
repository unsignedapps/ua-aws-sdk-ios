//
//  UAEC2PurchaseReservedInstancesOfferingRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2PurchaseReservedInstancesOfferingRequest.h"
#import "UAEC2PurchaseReservedInstancesOfferingResponse.h"
#import "UAEC2ReservedInstanceLimitPrice.h"

@interface UAEC2PurchaseReservedInstancesOfferingRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAEC2PurchaseReservedInstancesOfferingRequest

@synthesize action=_action, version=_version, dryRun=_dryRun, reservedInstancesOfferingID=_reservedInstancesOfferingID, instanceCount=_instanceCount, limitPrice=_limitPrice;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"PurchaseReservedInstancesOffering"];
		[self setVersion:@"2014-02-01"];
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

- (void)setDryRun:(BOOL)dryRun
{
	_dryRun = dryRun;
	
	if (![self.UA_dirtyProperties containsObject:@"dryRun"])
		[self.UA_dirtyProperties addObject:@"dryRun"];
}

- (void)setReservedInstancesOfferingID:(NSString *)reservedInstancesOfferingID
{
	_reservedInstancesOfferingID = reservedInstancesOfferingID;
	
	if (![self.UA_dirtyProperties containsObject:@"reservedInstancesOfferingID"])
		[self.UA_dirtyProperties addObject:@"reservedInstancesOfferingID"];
}

- (void)setInstanceCount:(NSNumber *)instanceCount
{
	_instanceCount = instanceCount;
	
	if (![self.UA_dirtyProperties containsObject:@"instanceCount"])
		[self.UA_dirtyProperties addObject:@"instanceCount"];
}

- (void)setLimitPrice:(UAEC2ReservedInstanceLimitPrice *)limitPrice
{
	_limitPrice = limitPrice;
	
	if (![self.UA_dirtyProperties containsObject:@"limitPrice"])
		[self.UA_dirtyProperties addObject:@"limitPrice"];
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

#pragma mark - Invocation

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

@end
