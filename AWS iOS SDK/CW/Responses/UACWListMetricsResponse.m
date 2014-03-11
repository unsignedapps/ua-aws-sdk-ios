//
//  UACWListMetricsResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UACWListMetricsResponse.h"
#import "UACWMetric.h"

@implementation UACWListMetricsResponse

@synthesize metrics=_metrics, nextToken=_nextToken;

+ (NSString *)XPathPrefix
{
    return @"./cloudwatch:ListMetricsResponse/cloudwatch:ListMetricsResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UACWResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"metrics": @"cloudwatch:Metrics/cloudwatch:member",
        @"nextToken": @"cloudwatch:NextToken"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)metricsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UACWMetric class]];
}

@end
