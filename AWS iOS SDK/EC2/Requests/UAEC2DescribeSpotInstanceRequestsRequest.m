//
//  UAEC2DescribeSpotInstanceRequestsRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribeSpotInstanceRequestsRequest.h"
#import "UAEC2DescribeSpotInstanceRequestsResponse.h"
#import "UAEC2Filter.h"

@interface UAEC2DescribeSpotInstanceRequestsRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAEC2DescribeSpotInstanceRequestsRequest

@synthesize action=_action, version=_version, dryRun=_dryRun, spotInstanceRequestIDs=_spotInstanceRequestIDs, filters=_filters;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"DescribeSpotInstanceRequests"];
		[self setVersion:@"2014-02-01"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAEC2DescribeSpotInstanceRequestsResponse class];
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
        @"spotInstanceRequestIDs": @"SpotInstanceRequestId",
        @"filters": @"Filter"
    }];
    return [keyPaths copy];
}

- (NSString *)spotInstanceRequestIDAtIndex:(NSUInteger)index
{
    if (self.spotInstanceRequestIDs == nil || index >= ([self.spotInstanceRequestIDs count]-1))
        return nil;

    return [self.spotInstanceRequestIDs objectAtIndex:index];
}

- (UAEC2Filter *)filterAtIndex:(NSUInteger)index
{
    if (self.filters == nil || index >= ([self.filters count]-1))
        return nil;

    return [self.filters objectAtIndex:index];
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

- (void)addSpotInstanceRequestID:(NSString *)spotInstanceRequestID
{
	if (self.spotInstanceRequestIDs == nil)
		[self setSpotInstanceRequestIDs:[NSMutableArray array]];
	[self.spotInstanceRequestIDs addObject:spotInstanceRequestID];
}

- (void)addFilter:(UAEC2Filter *)filter
{
	if (self.filters == nil)
		[self setFilters:[NSMutableArray array]];
	[self.filters addObject:filter];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAEC2DescribeSpotInstanceRequestsRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAEC2DescribeSpotInstanceRequestsRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAEC2DescribeSpotInstanceRequestsRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAEC2DescribeSpotInstanceRequestsRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
