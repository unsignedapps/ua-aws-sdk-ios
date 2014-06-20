//
//  UAASTag.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASTag.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAASTag

@synthesize resourceID=_resourceID, resourceType=_resourceType, key=_key, value=_value, propagateAtLaunch=_propagateAtLaunch;

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAASModel queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"resourceID": @"ResourceId",
        @"resourceType": @"ResourceType",
        @"key": @"Key",
        @"value": @"Value",
        @"propagateAtLaunch": @"PropagateAtLaunch"
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
    NSMutableDictionary *keyPaths = [[UAASModel XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"resourceID": @"AutoScaling:ResourceId",
        @"resourceType": @"AutoScaling:ResourceType",
        @"key": @"AutoScaling:Key",
        @"value": @"AutoScaling:Value",
        @"propagateAtLaunch": @"AutoScaling:PropagateAtLaunch"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)propagateAtLaunchXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

@end

#pragma clang diagnostic pop