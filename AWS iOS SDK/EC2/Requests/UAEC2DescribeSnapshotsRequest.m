//
//  UAEC2DescribeSnapshotsRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribeSnapshotsRequest.h"
#import "UAEC2DescribeSnapshotsResponse.h"
#import "UAEC2Filter.h"

@interface UAEC2DescribeSnapshotsRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAEC2DescribeSnapshotsRequest

@synthesize action=_action, version=_version, dryRun=_dryRun, snapshotIDs=_snapshotIDs, ownerIDs=_ownerIDs, restorableByUserIDs=_restorableByUserIDs, filters=_filters;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"DescribeSnapshots"];
		[self setVersion:@"2014-02-01"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAEC2DescribeSnapshotsResponse class];
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
        @"snapshotIDs": @"SnapshotId",
        @"ownerIDs": @"Owner",
        @"restorableByUserIDs": @"RestorableBy",
        @"filters": @"Filter"
    }];
    return [keyPaths copy];
}

- (NSString *)snapshotIDAtIndex:(NSUInteger)index
{
    if (self.snapshotIDs == nil || index >= ([self.snapshotIDs count]-1))
        return nil;

    return [self.snapshotIDs objectAtIndex:index];
}

- (NSString *)ownerIDAtIndex:(NSUInteger)index
{
    if (self.ownerIDs == nil || index >= ([self.ownerIDs count]-1))
        return nil;

    return [self.ownerIDs objectAtIndex:index];
}

- (NSString *)restorableByUserIDAtIndex:(NSUInteger)index
{
    if (self.restorableByUserIDs == nil || index >= ([self.restorableByUserIDs count]-1))
        return nil;

    return [self.restorableByUserIDs objectAtIndex:index];
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

- (void)addSnapshotID:(NSString *)snapshotID
{
	if (self.snapshotIDs == nil)
		[self setSnapshotIDs:[NSMutableArray array]];
	[self.snapshotIDs addObject:snapshotID];
}

- (void)addOwnerID:(NSString *)ownerID
{
	if (self.ownerIDs == nil)
		[self setOwnerIDs:[NSMutableArray array]];
	[self.ownerIDs addObject:ownerID];
}

- (void)addRestorableByUserID:(NSString *)restorableByUserID
{
	if (self.restorableByUserIDs == nil)
		[self setRestorableByUserIDs:[NSMutableArray array]];
	[self.restorableByUserIDs addObject:restorableByUserID];
}

- (void)addFilter:(UAEC2Filter *)filter
{
	if (self.filters == nil)
		[self setFilters:[NSMutableArray array]];
	[self.filters addObject:filter];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAEC2DescribeSnapshotsRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAEC2DescribeSnapshotsRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAEC2DescribeSnapshotsRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAEC2DescribeSnapshotsRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
