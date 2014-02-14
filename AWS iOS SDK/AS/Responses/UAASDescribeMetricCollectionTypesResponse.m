//
//  UAASDescribeMetricCollectionTypesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
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

+ (NSValueTransformer *)metricsXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAASMetricCollectionType class]];
}

+ (NSValueTransformer *)granularitiesXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAASMetricGranularityType class]];
}

@end
