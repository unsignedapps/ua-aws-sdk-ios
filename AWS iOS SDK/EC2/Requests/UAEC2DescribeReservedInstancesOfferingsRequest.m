//
//  UAEC2DescribeReservedInstancesOfferingsRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribeReservedInstancesOfferingsRequest.h"
#import "UAEC2DescribeReservedInstancesOfferingsResponse.h"
#import "UAEC2Filter.h"

@interface UAEC2DescribeReservedInstancesOfferingsRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAEC2DescribeReservedInstancesOfferingsRequest

@synthesize action=_action, version=_version, dryRun=_dryRun, reservedInstancesOfferingIDs=_reservedInstancesOfferingIDs, instanceType=_instanceType, availabilityZone=_availabilityZone, productDescription=_productDescription, filters=_filters, instanceTenancy=_instanceTenancy, offeringType=_offeringType, nextToken=_nextToken, maxResults=_maxResults, includeMarketplace=_includeMarketplace, minDuration=_minDuration, maxDuration=_maxDuration, maxInstanceCount=_maxInstanceCount;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"DescribeReservedInstancesOfferings"];
		[self setVersion:@"2013-10-15"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAEC2DescribeReservedInstancesOfferingsResponse class];
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
        @"reservedInstancesOfferingIDs": @"ReservedInstancesOfferingId",
        @"instanceType": @"InstanceType",
        @"availabilityZone": @"AvailabilityZone",
        @"productDescription": @"ProductDescription",
        @"filters": @"Filter",
        @"instanceTenancy": @"InstanceTenancy",
        @"offeringType": @"OfferingType",
        @"nextToken": @"NextToken",
        @"maxResults": @"MaxResults",
        @"includeMarketplace": @"IncludeMarketplace",
        @"minDuration": @"MinDuration",
        @"maxDuration": @"MaxDuration",
        @"maxInstanceCount": @"MaxInstanceCount"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)filtersJSONTransformer
{
  return [NSValueTransformer mtl_JSONArrayTransformerWithModelClass:[UAEC2Filter class]];
}

+ (NSValueTransformer *)dryRunQueryStringTransformer
{
    return [MTLValueTransformer UA_JSONTransformerForBooleanString];
}

+ (NSValueTransformer *)filtersQueryStringTransformer
{
	return [NSValueTransformer mtl_QueryStringArrayTransformerWithModelClass:[UAEC2Filter class]];
}

+ (NSValueTransformer *)includeMarketplaceQueryStringTransformer
{
    return [MTLValueTransformer UA_JSONTransformerForBooleanString];
}

- (void)addReservedInstancesOfferingID:(NSString *)reservedInstancesOfferingID
{
	if (self.reservedInstancesOfferingIDs == nil)
		[self setReservedInstancesOfferingIDs:[NSMutableArray array]];
	[self.reservedInstancesOfferingIDs addObject:reservedInstancesOfferingID];
}
- (void)addFilter:(UAEC2Filter *)filter
{
	if (self.filters == nil)
		[self setFilters:[NSMutableArray array]];
	[self.filters addObject:filter];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAEC2DescribeReservedInstancesOfferingsRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAEC2DescribeReservedInstancesOfferingsRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAEC2DescribeReservedInstancesOfferingsRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAEC2DescribeReservedInstancesOfferingsRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
