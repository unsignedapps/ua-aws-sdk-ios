//
//  UAELBTag.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBTag.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAELBTag

@synthesize key=_key, value=_value;

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAELBModel queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"key": @"Key",
        @"value": @"Value"
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
        @"key": @"ElasticLoadBalancing:Key",
        @"value": @"ElasticLoadBalancing:Value"
    }];
    return [keyPaths copy];
}

@end

#pragma clang diagnostic pop