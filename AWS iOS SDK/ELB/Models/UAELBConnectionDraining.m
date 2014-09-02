//
//  UAELBConnectionDraining.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBConnectionDraining.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAELBConnectionDraining

@synthesize enabled=_enabled, timeout=_timeout;

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAELBModel queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"enabled": @"Enabled",
        @"timeout": @"Timeout"
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
        @"enabled": @"ElasticLoadBalancing:Enabled",
        @"timeout": @"ElasticLoadBalancing:Timeout"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)enabledXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

+ (NSValueTransformer *)timeoutXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

@end

#pragma clang diagnostic pop