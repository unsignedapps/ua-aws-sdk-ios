//
//  UACWListMetricsRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UACWListMetricsRequest.h"
#import "UACWListMetricsResponse.h"
#import "UACWDimension.h"

@interface UACWListMetricsRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UACWListMetricsRequest

@synthesize action=_action, version=_version, namespace=_namespace, metricName=_metricName, dimensions=_dimensions, nextToken=_nextToken;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"ListMetrics"];
		[self setVersion:@"2010-08-01"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UACWListMetricsResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UACWRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"namespace": @"Namespace",
        @"metricName": @"MetricName",
        @"dimensions": @"Dimensions.member",
        @"nextToken": @"NextToken"
    }];
    return [keyPaths copy];
}

- (UACWDimension *)dimensionAtIndex:(NSUInteger)index
{
    if (self.dimensions == nil || index >= ([self.dimensions count]-1))
        return nil;

    return [self.dimensions objectAtIndex:index];
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

- (void)setNamespace:(NSString *)namespace
{
	_namespace = namespace;
	
	if (![self.UA_dirtyProperties containsObject:@"namespace"])
		[self.UA_dirtyProperties addObject:@"namespace"];
}

- (void)setMetricName:(NSString *)metricName
{
	_metricName = metricName;
	
	if (![self.UA_dirtyProperties containsObject:@"metricName"])
		[self.UA_dirtyProperties addObject:@"metricName"];
}

- (void)setDimensions:(NSMutableArray *)dimensions
{
	_dimensions = dimensions;
	
	if (![self.UA_dirtyProperties containsObject:@"dimensions"])
		[self.UA_dirtyProperties addObject:@"dimensions"];
}

- (void)setNextToken:(NSString *)nextToken
{
	_nextToken = nextToken;
	
	if (![self.UA_dirtyProperties containsObject:@"nextToken"])
		[self.UA_dirtyProperties addObject:@"nextToken"];
}

+ (NSValueTransformer *)dimensionsJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONArrayTransformerWithModelClass:[UACWDimension class]];
}

+ (NSValueTransformer *)dimensionsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UACWDimension class]];
}

- (void)addDimension:(UACWDimension *)dimension
{
	if (self.dimensions == nil)
		[self setDimensions:[NSMutableArray array]];
	[self.dimensions addObject:dimension];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UACWListMetricsRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UACWListMetricsRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UACWListMetricsRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UACWListMetricsRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
