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
		[self setVersion:@"2014-02-01"];
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

- (void)setReservedInstancesOfferingIDs:(NSMutableArray *)reservedInstancesOfferingIDs
{
	_reservedInstancesOfferingIDs = reservedInstancesOfferingIDs;
	
	if (![self.UA_dirtyProperties containsObject:@"reservedInstancesOfferingIDs"])
		[self.UA_dirtyProperties addObject:@"reservedInstancesOfferingIDs"];
}

- (void)setInstanceType:(NSString *)instanceType
{
	_instanceType = instanceType;
	
	if (![self.UA_dirtyProperties containsObject:@"instanceType"])
		[self.UA_dirtyProperties addObject:@"instanceType"];
}

- (void)setAvailabilityZone:(NSString *)availabilityZone
{
	_availabilityZone = availabilityZone;
	
	if (![self.UA_dirtyProperties containsObject:@"availabilityZone"])
		[self.UA_dirtyProperties addObject:@"availabilityZone"];
}

- (void)setProductDescription:(NSString *)productDescription
{
	_productDescription = productDescription;
	
	if (![self.UA_dirtyProperties containsObject:@"productDescription"])
		[self.UA_dirtyProperties addObject:@"productDescription"];
}

- (void)setFilters:(NSMutableArray *)filters
{
	_filters = filters;
	
	if (![self.UA_dirtyProperties containsObject:@"filters"])
		[self.UA_dirtyProperties addObject:@"filters"];
}

- (void)setInstanceTenancy:(NSString *)instanceTenancy
{
	_instanceTenancy = instanceTenancy;
	
	if (![self.UA_dirtyProperties containsObject:@"instanceTenancy"])
		[self.UA_dirtyProperties addObject:@"instanceTenancy"];
}

- (void)setOfferingType:(NSString *)offeringType
{
	_offeringType = offeringType;
	
	if (![self.UA_dirtyProperties containsObject:@"offeringType"])
		[self.UA_dirtyProperties addObject:@"offeringType"];
}

- (void)setNextToken:(NSString *)nextToken
{
	_nextToken = nextToken;
	
	if (![self.UA_dirtyProperties containsObject:@"nextToken"])
		[self.UA_dirtyProperties addObject:@"nextToken"];
}

- (void)setMaxResults:(NSNumber *)maxResults
{
	_maxResults = maxResults;
	
	if (![self.UA_dirtyProperties containsObject:@"maxResults"])
		[self.UA_dirtyProperties addObject:@"maxResults"];
}

- (void)setIncludeMarketplace:(BOOL)includeMarketplace
{
	_includeMarketplace = includeMarketplace;
	
	if (![self.UA_dirtyProperties containsObject:@"includeMarketplace"])
		[self.UA_dirtyProperties addObject:@"includeMarketplace"];
}

- (void)setMinDuration:(NSNumber *)minDuration
{
	_minDuration = minDuration;
	
	if (![self.UA_dirtyProperties containsObject:@"minDuration"])
		[self.UA_dirtyProperties addObject:@"minDuration"];
}

- (void)setMaxDuration:(NSNumber *)maxDuration
{
	_maxDuration = maxDuration;
	
	if (![self.UA_dirtyProperties containsObject:@"maxDuration"])
		[self.UA_dirtyProperties addObject:@"maxDuration"];
}

- (void)setMaxInstanceCount:(NSNumber *)maxInstanceCount
{
	_maxInstanceCount = maxInstanceCount;
	
	if (![self.UA_dirtyProperties containsObject:@"maxInstanceCount"])
		[self.UA_dirtyProperties addObject:@"maxInstanceCount"];
}

+ (NSValueTransformer *)filtersJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONArrayTransformerWithModelClass:[UAEC2Filter class]];
}

+ (NSValueTransformer *)dryRunQueryStringTransformer
{
    return [UAMTLValueTransformer UA_JSONTransformerForBooleanString];
}

+ (NSValueTransformer *)filtersQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2Filter class]];
}

+ (NSValueTransformer *)includeMarketplaceQueryStringTransformer
{
    return [UAMTLValueTransformer UA_JSONTransformerForBooleanString];
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
