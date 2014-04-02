//
//  UAASDescribeMetricCollectionTypesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASDescribeMetricCollectionTypesResponse.h"
#import "UAASMetricCollectionType.h"
#import "UAASMetricGranularityType.h"

@implementation UAASDescribeMetricCollectionTypesResponse

@synthesize metrics=_metrics, granularities=_granularities;

+ (NSString *)XPathPrefix
{
    return @"./AutoScaling:DescribeMetricCollectionTypesResponse/AutoScaling:DescribeMetricCollectionTypesResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAASResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"metrics": @"AutoScaling:Metrics/AutoScaling:member",
        @"granularities": @"AutoScaling:Granularities/AutoScaling:member"
    }];
    return [keyPaths copy];
}

- (UAASMetricCollectionType *)metricAtIndex:(NSUInteger)index
{
    if (self.metrics == nil || index >= ([self.metrics count]-1))
        return nil;

    return [self.metrics objectAtIndex:index];
}

- (UAASMetricGranularityType *)granularityAtIndex:(NSUInteger)index
{
    if (self.granularities == nil || index >= ([self.granularities count]-1))
        return nil;

    return [self.granularities objectAtIndex:index];
}

+ (NSValueTransformer *)metricsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAASMetricCollectionType class]];
}

+ (NSValueTransformer *)granularitiesXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAASMetricGranularityType class]];
}

@end
