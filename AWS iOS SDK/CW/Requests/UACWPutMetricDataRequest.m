//
//  UACWPutMetricDataRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UACWPutMetricDataRequest.h"
#import "UACWPutMetricDataResponse.h"
#import "UACWMetricDatum.h"

@interface UACWPutMetricDataRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UACWPutMetricDataRequest

@synthesize action=_action, version=_version, namespace=_namespace, metricData=_metricData;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"PutMetricData"];
		[self setVersion:@"2010-08-01"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UACWPutMetricDataResponse class];
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
        @"metricData": @"MetricData.member"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)metricDataJSONTransformer
{
  return [NSValueTransformer mtl_JSONArrayTransformerWithModelClass:[UACWMetricDatum class]];
}

+ (NSValueTransformer *)metricDataQueryStringTransformer
{
  return [NSValueTransformer mtl_QueryStringArrayTransformerWithModelClass:[UACWMetricDatum class]];
}

- (void)addMetricDatum:(UACWMetricDatum *)metricDatum
{
	if (self.metricData == nil)
		[self setMetricData:[NSMutableArray array]];
	[self.metricData addObject:metricDatum];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UACWPutMetricDataRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UACWPutMetricDataRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UACWPutMetricDataRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UACWPutMetricDataRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
