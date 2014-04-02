//
//  UAEC2DescribeNetworkInterfacesRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribeNetworkInterfacesRequest.h"
#import "UAEC2DescribeNetworkInterfacesResponse.h"
#import "UAEC2Filter.h"

@interface UAEC2DescribeNetworkInterfacesRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAEC2DescribeNetworkInterfacesRequest

@synthesize action=_action, version=_version, dryRun=_dryRun, networkInterfaceIDs=_networkInterfaceIDs, filters=_filters;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"DescribeNetworkInterfaces"];
		[self setVersion:@"2014-02-01"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAEC2DescribeNetworkInterfacesResponse class];
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
        @"networkInterfaceIDs": @"NetworkInterfaceId",
        @"filters": @"Filter"
    }];
    return [keyPaths copy];
}

- (NSString *)networkInterfaceIDAtIndex:(NSUInteger)index
{
    if (self.networkInterfaceIDs == nil || index >= ([self.networkInterfaceIDs count]-1))
        return nil;

    return [self.networkInterfaceIDs objectAtIndex:index];
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

- (void)setNetworkInterfaceIDs:(NSMutableArray *)networkInterfaceIDs
{
	_networkInterfaceIDs = networkInterfaceIDs;
	
	if (![self.UA_dirtyProperties containsObject:@"networkInterfaceIDs"])
		[self.UA_dirtyProperties addObject:@"networkInterfaceIDs"];
}

- (void)setFilters:(NSMutableArray *)filters
{
	_filters = filters;
	
	if (![self.UA_dirtyProperties containsObject:@"filters"])
		[self.UA_dirtyProperties addObject:@"filters"];
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

- (void)addNetworkInterfaceID:(NSString *)networkInterfaceID
{
	if (self.networkInterfaceIDs == nil)
		[self setNetworkInterfaceIDs:[NSMutableArray array]];
	[self.networkInterfaceIDs addObject:networkInterfaceID];
}

- (void)addFilter:(UAEC2Filter *)filter
{
	if (self.filters == nil)
		[self setFilters:[NSMutableArray array]];
	[self.filters addObject:filter];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAEC2DescribeNetworkInterfacesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAEC2DescribeNetworkInterfacesRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAEC2DescribeNetworkInterfacesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAEC2DescribeNetworkInterfacesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
