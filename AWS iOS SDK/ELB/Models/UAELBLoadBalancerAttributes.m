//
//  UAELBLoadBalancerAttributes.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBLoadBalancerAttributes.h"
#import "UAELBAccessLog.h"

@implementation UAELBLoadBalancerAttributes

@synthesize crossZoneLoadBalancing=_crossZoneLoadBalancing, accessLog=_accessLog;

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAELBModel queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"crossZoneLoadBalancing": @"CrossZoneLoadBalancing.Enabled",
        @"accessLog": @"AccessLog"
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
        @"crossZoneLoadBalancing": @"ElasticLoadBalancing:CrossZoneLoadBalancing/ElasticLoadBalancing:Enabled",
        @"accessLog": @"ElasticLoadBalancing:AccessLog"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)accessLogQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UAELBAccessLog class]];
}

+ (NSValueTransformer *)crossZoneLoadBalancingXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

+ (NSValueTransformer *)accessLogXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UAELBAccessLog class]];
}

@end
