//
//  UAEC2IPPermission.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2IPPermission.h"
#import "UAEC2UserIdGroupPair.h"
#import "UAEC2IPRange.h"

@implementation UAEC2IPPermission

@synthesize ipProtocol=_ipProtocol, fromPort=_fromPort, toPort=_toPort, userIdGroupPairs=_userIdGroupPairs, ipRanges=_ipRanges;

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Model queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"ipProtocol": @"ipProtocol",
        @"fromPort": @"fromPort",
        @"toPort": @"toPort",
        @"userIdGroupPairs": @"groups",
        @"ipRanges": @"ipRanges"
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
    NSMutableDictionary *keyPaths = [[UAEC2Model XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"ipProtocol": @"ec2:ipProtocol",
        @"fromPort": @"ec2:fromPort",
        @"toPort": @"ec2:toPort",
        @"userIdGroupPairs": @"ec2:groups/ec2:item",
        @"ipRanges": @"ec2:ipRanges/ec2:item"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)userIdGroupPairsQueryStringTransformer
{
  return [NSValueTransformer mtl_QueryStringArrayTransformerWithModelClass:[UAEC2UserIdGroupPair class]];
}

+ (NSValueTransformer *)ipRangesQueryStringTransformer
{
  return [NSValueTransformer mtl_QueryStringArrayTransformerWithModelClass:[UAEC2IPRange class]];
}

+ (NSValueTransformer *)fromPortXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)toPortXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)userIdGroupPairsXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAEC2UserIdGroupPair class]];
}

+ (NSValueTransformer *)ipRangesXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAEC2IPRange class]];
}

@end
