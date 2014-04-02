//
//  UAEC2DescribeConversionTasksRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribeConversionTasksRequest.h"
#import "UAEC2DescribeConversionTasksResponse.h"
#import "UAEC2Filter.h"

@interface UAEC2DescribeConversionTasksRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAEC2DescribeConversionTasksRequest

@synthesize action=_action, version=_version, dryRun=_dryRun, filters=_filters, conversionTaskIDs=_conversionTaskIDs;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"DescribeConversionTasks"];
		[self setVersion:@"2014-02-01"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAEC2DescribeConversionTasksResponse class];
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
        @"filters": @"Filter",
        @"conversionTaskIDs": @"ConversionTaskId"
    }];
    return [keyPaths copy];
}

- (UAEC2Filter *)filterAtIndex:(NSUInteger)index
{
    if (self.filters == nil || index >= ([self.filters count]-1))
        return nil;

    return [self.filters objectAtIndex:index];
}

- (NSString *)conversionTaskIDAtIndex:(NSUInteger)index
{
    if (self.conversionTaskIDs == nil || index >= ([self.conversionTaskIDs count]-1))
        return nil;

    return [self.conversionTaskIDs objectAtIndex:index];
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

- (void)setFilters:(NSMutableArray *)filters
{
	_filters = filters;
	
	if (![self.UA_dirtyProperties containsObject:@"filters"])
		[self.UA_dirtyProperties addObject:@"filters"];
}

- (void)setConversionTaskIDs:(NSMutableArray *)conversionTaskIDs
{
	_conversionTaskIDs = conversionTaskIDs;
	
	if (![self.UA_dirtyProperties containsObject:@"conversionTaskIDs"])
		[self.UA_dirtyProperties addObject:@"conversionTaskIDs"];
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

- (void)addFilter:(UAEC2Filter *)filter
{
	if (self.filters == nil)
		[self setFilters:[NSMutableArray array]];
	[self.filters addObject:filter];
}

- (void)addConversionTaskID:(NSString *)conversionTaskID
{
	if (self.conversionTaskIDs == nil)
		[self setConversionTaskIDs:[NSMutableArray array]];
	[self.conversionTaskIDs addObject:conversionTaskID];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAEC2DescribeConversionTasksRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAEC2DescribeConversionTasksRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAEC2DescribeConversionTasksRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAEC2DescribeConversionTasksRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
