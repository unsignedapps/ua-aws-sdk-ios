//
//  UACWListMetricsRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UACWListMetricsRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UACWListMetricsResponse.h"
#import "UACWDimension.h"

@interface UACWListMetricsRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UACWListMetricsRequest

@synthesize action=_action, version=_version, namespace=_namespace, metricName=_metricName, dimensions=_dimensions, nextToken=_nextToken;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"ListMetrics"];
		[self setVersion:@"2010-08-01"];
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(dimensionAtIndex:) propertyName:@"dimensions"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addDimension:) propertyName:@"dimensions"];
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

+ (NSValueTransformer *)dimensionsJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONArrayTransformerWithModelClass:[UACWDimension class]];
}

+ (NSValueTransformer *)dimensionsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UACWDimension class]];
}

/*#pragma mark - Invocation

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
*/
@end

#pragma clang diagnostic pop