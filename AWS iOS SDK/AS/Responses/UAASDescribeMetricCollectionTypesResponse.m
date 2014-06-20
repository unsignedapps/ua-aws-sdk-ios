//
//  UAASDescribeMetricCollectionTypesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASDescribeMetricCollectionTypesResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAASMetricCollectionType.h"
#import "UAASMetricGranularityType.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

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
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAASMetricCollectionType class]];
}

+ (NSValueTransformer *)granularitiesXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAASMetricGranularityType class]];
}

@end

#pragma clang diagnostic pop