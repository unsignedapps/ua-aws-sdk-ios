//
//  UAELBHealthCheck.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBHealthCheck.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAELBHealthCheck

@synthesize target=_target, interval=_interval, timeout=_timeout, unhealthyThreshold=_unhealthyThreshold, healthyThreshold=_healthyThreshold;

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAELBModel queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"target": @"Target",
        @"interval": @"Interval",
        @"timeout": @"Timeout",
        @"unhealthyThreshold": @"UnhealthyThreshold",
        @"healthyThreshold": @"HealthyThreshold"
    }];
    return [keyPaths copy];
}

+ (NSString *)XPathPrefix
{
    return @"./";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAELBModel XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"target": @"ElasticLoadBalancing:Target",
        @"interval": @"ElasticLoadBalancing:Interval",
        @"timeout": @"ElasticLoadBalancing:Timeout",
        @"unhealthyThreshold": @"ElasticLoadBalancing:UnhealthyThreshold",
        @"healthyThreshold": @"ElasticLoadBalancing:HealthyThreshold"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)intervalXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)timeoutXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)unhealthyThresholdXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)healthyThresholdXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

@end

#pragma clang diagnostic pop