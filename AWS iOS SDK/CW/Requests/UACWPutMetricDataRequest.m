//
//  UACWPutMetricDataRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UACWPutMetricDataRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UACWPutMetricDataResponse.h"
#import "UACWMetricDatum.h"

@interface UACWPutMetricDataRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UACWPutMetricDataRequest

@synthesize action=_action, version=_version, namespace=_namespace, metricData=_metricData;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"PutMetricData"];
		[self setVersion:@"2010-08-01"];
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(metricDatumAtIndex:) propertyName:@"metricData"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addMetricDatum:) propertyName:@"metricData"];
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
  return [NSValueTransformer UAMTL_JSONArrayTransformerWithModelClass:[UACWMetricDatum class]];
}

+ (NSValueTransformer *)metricDataQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UACWMetricDatum class]];
}

/*#pragma mark - Invocation

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
*/
@end

#pragma clang diagnostic pop