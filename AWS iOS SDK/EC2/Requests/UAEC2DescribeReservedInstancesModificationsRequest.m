//
//  UAEC2DescribeReservedInstancesModificationsRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribeReservedInstancesModificationsRequest.h"
#import "UAEC2DescribeReservedInstancesModificationsResponse.h"
#import "UAEC2Filter.h"

@interface UAEC2DescribeReservedInstancesModificationsRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAEC2DescribeReservedInstancesModificationsRequest

@synthesize action=_action, version=_version, reservedInstancesModificationIDs=_reservedInstancesModificationIDs, nextToken=_nextToken, filters=_filters;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"DescribeReservedInstancesModifications"];
		[self setVersion:@"2014-02-01"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAEC2DescribeReservedInstancesModificationsResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Request queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"reservedInstancesModificationIDs": @"ReservedInstancesModificationId",
        @"nextToken": @"NextToken",
        @"filters": @"Filter"
    }];
    return [keyPaths copy];
}

- (NSString *)reservedInstancesModificationIDAtIndex:(NSUInteger)index
{
    if (self.reservedInstancesModificationIDs == nil || index >= ([self.reservedInstancesModificationIDs count]-1))
        return nil;

    return [self.reservedInstancesModificationIDs objectAtIndex:index];
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

- (void)setReservedInstancesModificationIDs:(NSMutableArray *)reservedInstancesModificationIDs
{
	_reservedInstancesModificationIDs = reservedInstancesModificationIDs;
	
	if (![self.UA_dirtyProperties containsObject:@"reservedInstancesModificationIDs"])
		[self.UA_dirtyProperties addObject:@"reservedInstancesModificationIDs"];
}

- (void)setNextToken:(NSString *)nextToken
{
	_nextToken = nextToken;
	
	if (![self.UA_dirtyProperties containsObject:@"nextToken"])
		[self.UA_dirtyProperties addObject:@"nextToken"];
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

+ (NSValueTransformer *)filtersQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2Filter class]];
}

- (void)addReservedInstancesModificationID:(NSString *)reservedInstancesModificationID
{
	if (self.reservedInstancesModificationIDs == nil)
		[self setReservedInstancesModificationIDs:[NSMutableArray array]];
	[self.reservedInstancesModificationIDs addObject:reservedInstancesModificationID];
}

- (void)addFilter:(UAEC2Filter *)filter
{
	if (self.filters == nil)
		[self setFilters:[NSMutableArray array]];
	[self.filters addObject:filter];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAEC2DescribeReservedInstancesModificationsRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAEC2DescribeReservedInstancesModificationsRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAEC2DescribeReservedInstancesModificationsRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAEC2DescribeReservedInstancesModificationsRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
