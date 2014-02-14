//
//  UAEC2LicenseCapacity.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2LicenseCapacity.h"

@implementation UAEC2LicenseCapacity

@synthesize capacity=_capacity, instanceCapacity=_instanceCapacity, state=_state, earliestAllowedDeactivationTime=_earliestAllowedDeactivationTime;

+ (NSString *)XPathPrefix
{
    return @"./";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Model XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"capacity": @"ec2:capacity",
        @"instanceCapacity": @"ec2:instanceCapacity",
        @"state": @"ec2:state",
        @"earliestAllowedDeactivationTime": @"ec2:earliestAllowedDeactivationTime"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)earliestAllowedDeactivationTimeQueryStringTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)capacityXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)instanceCapacityXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)earliestAllowedDeactivationTimeXMLTransformer
{
    return [NSValueTransformer mtl_XMLTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

@end
