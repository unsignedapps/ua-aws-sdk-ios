//
//  UAEC2DescribeInstancesRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribeInstancesRequest.h"
#import "UAEC2DescribeInstancesResponse.h"
#import "UAEC2Filter.h"

@interface UAEC2DescribeInstancesRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAEC2DescribeInstancesRequest

@synthesize action=_action, version=_version, dryRun=_dryRun, instanceIDs=_instanceIDs, filters=_filters, nextToken=_nextToken, maxResults=_maxResults;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"DescribeInstances"];
		[self setVersion:@"2014-02-01"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAEC2DescribeInstancesResponse class];
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
        @"instanceIDs": @"InstanceId",
        @"filters": @"Filter",
        @"nextToken": @"NextToken",
        @"maxResults": @"MaxResults"
    }];
    return [keyPaths copy];
}

- (NSString *)instanceIDAtIndex:(NSUInteger)index
{
    if (self.instanceIDs == nil || index >= ([self.instanceIDs count]-1))
        return nil;

    return [self.instanceIDs objectAtIndex:index];
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

- (void)addInstanceID:(NSString *)instanceID
{
	if (self.instanceIDs == nil)
		[self setInstanceIDs:[NSMutableArray array]];
	[self.instanceIDs addObject:instanceID];
}

- (void)addFilter:(UAEC2Filter *)filter
{
	if (self.filters == nil)
		[self setFilters:[NSMutableArray array]];
	[self.filters addObject:filter];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAEC2DescribeInstancesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAEC2DescribeInstancesRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAEC2DescribeInstancesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAEC2DescribeInstancesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
