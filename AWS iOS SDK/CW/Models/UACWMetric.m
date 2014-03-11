//
//  UACWMetric.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UACWMetric.h"
#import "UACWDimension.h"

@implementation UACWMetric

@synthesize namespace=_namespace, metricName=_metricName, dimensions=_dimensions;

+ (NSString *)XPathPrefix
{
    return @"./";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UACWModel XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"namespace": @"cloudwatch:Namespace",
        @"metricName": @"cloudwatch:MetricName",
        @"dimensions": @"cloudwatch:Dimensions/cloudwatch:member"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)dimensionsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UACWDimension class]];
}

+ (NSValueTransformer *)dimensionsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UACWDimension class]];
}

@end
