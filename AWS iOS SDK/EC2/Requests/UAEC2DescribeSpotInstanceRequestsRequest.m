//
//  UAEC2DescribeSpotInstanceRequestsRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribeSpotInstanceRequestsRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2DescribeSpotInstanceRequestsResponse.h"
#import "UAEC2Filter.h"

@interface UAEC2DescribeSpotInstanceRequestsRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2DescribeSpotInstanceRequestsRequest

@synthesize action=_action, version=_version, dryRun=_dryRun, spotInstanceRequestIDs=_spotInstanceRequestIDs, filters=_filters;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"DescribeSpotInstanceRequests"];
		[self setVersion:@"2014-02-01"];
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(spotInstanceRequestIDAtIndex:) propertyName:@"spotInstanceRequestIDs"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(filterAtIndex:) propertyName:@"filters"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addSpotInstanceRequestID:) propertyName:@"spotInstanceRequestIDs"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addFilter:) propertyName:@"filters"];
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

/*#pragma mark - Invocation

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
*/
@end

#pragma clang diagnostic pop