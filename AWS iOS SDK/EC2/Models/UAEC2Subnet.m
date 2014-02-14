//
//  UAEC2Subnet.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Subnet.h"
#import "UAEC2Tag.h"

@implementation UAEC2Subnet

@synthesize subnetID=_subnetID, state=_state, vpcID=_vpcID, cidrBlock=_cidrBlock, availableIPAddressCount=_availableIPAddressCount, availabilityZone=_availabilityZone, defaultForAz=_defaultForAz, mapPublicIPOnLaunch=_mapPublicIPOnLaunch, tags=_tags;

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
        @"subnetID": @"ec2:subnetId",
        @"state": @"ec2:state",
        @"vpcID": @"ec2:vpcId",
        @"cidrBlock": @"ec2:cidrBlock",
        @"availableIPAddressCount": @"ec2:availableIpAddressCount",
        @"availabilityZone": @"ec2:availabilityZone",
        @"defaultForAz": @"ec2:defaultForAz",
        @"mapPublicIPOnLaunch": @"ec2:mapPublicIpOnLaunch",
        @"tags": @"ec2:tagSet/ec2:item"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)tagsQueryStringTransformer
{
  return [NSValueTransformer mtl_QueryStringArrayTransformerWithModelClass:[UAEC2Tag class]];
}

+ (NSValueTransformer *)availableIPAddressCountXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)tagsXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAEC2Tag class]];
}

@end
