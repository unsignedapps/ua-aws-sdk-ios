//
//  UAEC2VPC.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2VPC.h"
#import "UAEC2Tag.h"

@implementation UAEC2VPC

@synthesize vpcID=_vpcID, state=_state, cidrBlock=_cidrBlock, dhcpOptionsID=_dhcpOptionsID, tags=_tags, instanceTenancy=_instanceTenancy, isDefault=_isDefault;

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
        @"vpcID": @"ec2:vpcId",
        @"state": @"ec2:state",
        @"cidrBlock": @"ec2:cidrBlock",
        @"dhcpOptionsID": @"ec2:dhcpOptionsId",
        @"tags": @"ec2:tagSet/ec2:item",
        @"instanceTenancy": @"ec2:instanceTenancy",
        @"isDefault": @"ec2:isDefault"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)tagsQueryStringTransformer
{
  return [NSValueTransformer mtl_QueryStringArrayTransformerWithModelClass:[UAEC2Tag class]];
}

+ (NSValueTransformer *)tagsXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAEC2Tag class]];
}

@end
