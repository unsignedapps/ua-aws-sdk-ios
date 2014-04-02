//
//  UAEC2DescribeSpotPriceHistoryRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribeSpotPriceHistoryRequest.h"
#import "UAEC2DescribeSpotPriceHistoryResponse.h"
#import "UAEC2Filter.h"

@interface UAEC2DescribeSpotPriceHistoryRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAEC2DescribeSpotPriceHistoryRequest

@synthesize action=_action, version=_version, dryRun=_dryRun, startTime=_startTime, endTime=_endTime, instanceTypes=_instanceTypes, productDescriptions=_productDescriptions, filters=_filters, availabilityZone=_availabilityZone, maxResults=_maxResults, nextToken=_nextToken;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"DescribeSpotPriceHistory"];
		[self setVersion:@"2014-02-01"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAEC2DescribeSpotPriceHistoryResponse class];
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
        @"startTime": @"StartTime",
        @"endTime": @"EndTime",
        @"instanceTypes": @"InstanceType",
        @"productDescriptions": @"ProductDescription",
        @"filters": @"Filter",
        @"availabilityZone": @"AvailabilityZone",
        @"maxResults": @"MaxResults",
        @"nextToken": @"NextToken"
    }];
    return [keyPaths copy];
}

- (NSString *)instanceTypeAtIndex:(NSUInteger)index
{
    if (self.instanceTypes == nil || index >= ([self.instanceTypes count]-1))
        return nil;

    return [self.instanceTypes objectAtIndex:index];
}

- (NSString *)productionDescriptionAtIndex:(NSUInteger)index
{
    if (self.productDescriptions == nil || index >= ([self.productDescriptions count]-1))
        return nil;

    return [self.productDescriptions objectAtIndex:index];
}

- (UAEC2Filter *)filterAtIndex:(NSUInteger)index
{
    if (self.filters == nil || index >= ([self.filters count]-1))
        return nil;

    return [self.filters objectAtIndex:index];
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

- (void)setStartTime:(NSDate *)startTime
{
	_startTime = startTime;
	
	if (![self.UA_dirtyProperties containsObject:@"startTime"])
		[self.UA_dirtyProperties addObject:@"startTime"];
}

- (void)setEndTime:(NSDate *)endTime
{
	_endTime = endTime;
	
	if (![self.UA_dirtyProperties containsObject:@"endTime"])
		[self.UA_dirtyProperties addObject:@"endTime"];
}

- (void)setInstanceTypes:(NSMutableArray *)instanceTypes
{
	_instanceTypes = instanceTypes;
	
	if (![self.UA_dirtyProperties containsObject:@"instanceTypes"])
		[self.UA_dirtyProperties addObject:@"instanceTypes"];
}

- (void)setProductDescriptions:(NSMutableArray *)productDescriptions
{
	_productDescriptions = productDescriptions;
	
	if (![self.UA_dirtyProperties containsObject:@"productDescriptions"])
		[self.UA_dirtyProperties addObject:@"productDescriptions"];
}

- (void)setFilters:(NSMutableArray *)filters
{
	_filters = filters;
	
	if (![self.UA_dirtyProperties containsObject:@"filters"])
		[self.UA_dirtyProperties addObject:@"filters"];
}

- (void)setAvailabilityZone:(NSString *)availabilityZone
{
	_availabilityZone = availabilityZone;
	
	if (![self.UA_dirtyProperties containsObject:@"availabilityZone"])
		[self.UA_dirtyProperties addObject:@"availabilityZone"];
}

- (void)setMaxResults:(NSNumber *)maxResults
{
	_maxResults = maxResults;
	
	if (![self.UA_dirtyProperties containsObject:@"maxResults"])
		[self.UA_dirtyProperties addObject:@"maxResults"];
}

- (void)setNextToken:(NSString *)nextToken
{
	_nextToken = nextToken;
	
	if (![self.UA_dirtyProperties containsObject:@"nextToken"])
		[self.UA_dirtyProperties addObject:@"nextToken"];
}

+ (NSValueTransformer *)startTimeJSONTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)endTimeJSONTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)filtersJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONArrayTransformerWithModelClass:[UAEC2Filter class]];
}

+ (NSValueTransformer *)dryRunQueryStringTransformer
{
    return [UAMTLValueTransformer UA_JSONTransformerForBooleanString];
}

+ (NSValueTransformer *)startTimeQueryStringTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)endTimeQueryStringTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)filtersQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2Filter class]];
}

- (void)addInstanceType:(NSString *)instanceType
{
	if (self.instanceTypes == nil)
		[self setInstanceTypes:[NSMutableArray array]];
	[self.instanceTypes addObject:instanceType];
}

- (void)addProductionDescription:(NSString *)productionDescription
{
	if (self.productDescriptions == nil)
		[self setProductDescriptions:[NSMutableArray array]];
	[self.productDescriptions addObject:productionDescription];
}

- (void)addFilter:(UAEC2Filter *)filter
{
	if (self.filters == nil)
		[self setFilters:[NSMutableArray array]];
	[self.filters addObject:filter];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAEC2DescribeSpotPriceHistoryRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAEC2DescribeSpotPriceHistoryRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAEC2DescribeSpotPriceHistoryRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAEC2DescribeSpotPriceHistoryRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
