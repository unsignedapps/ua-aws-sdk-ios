//
//  UAEC2InstanceNetworkInterfaceSpecification.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2InstanceNetworkInterfaceSpecification.h"
#import "UAEC2PrivateIPAddressSpecifiction.h"

@implementation UAEC2InstanceNetworkInterfaceSpecification

@synthesize networkInterfaceID=_networkInterfaceID, deviceIndex=_deviceIndex, subnetID=_subnetID, descriptionValue=_descriptionValue, privateIPAddress=_privateIPAddress, groups=_groups, deleteOnTermination=_deleteOnTermination, privateIPAddresses=_privateIPAddresses, secondaryPrivateIPAddressCount=_secondaryPrivateIPAddressCount, associatePublicIPAddress=_associatePublicIPAddress;

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Model queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"networkInterfaceID": @"networkInterfaceId",
        @"deviceIndex": @"deviceIndex",
        @"subnetID": @"subnetId",
        @"descriptionValue": @"description",
        @"privateIPAddress": @"privateIpAddress",
        @"groups": @"SecurityGroupId",
        @"deleteOnTermination": @"deleteOnTermination",
        @"privateIPAddresses": @"privateIpAddressesSet",
        @"secondaryPrivateIPAddressCount": @"secondaryPrivateIpAddressCount",
        @"associatePublicIPAddress": @"associatePublicIpAddress"
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
        @"networkInterfaceID": @"ec2:networkInterfaceId",
        @"deviceIndex": @"ec2:deviceIndex",
        @"subnetID": @"ec2:subnetId",
        @"descriptionValue": @"ec2:description",
        @"privateIPAddress": @"ec2:privateIpAddress",
        @"groups": @"ec2:SecurityGroupId/ec2:SecurityGroupId",
        @"deleteOnTermination": @"ec2:deleteOnTermination",
        @"privateIPAddresses": @"ec2:privateIpAddressesSet/ec2:item",
        @"secondaryPrivateIPAddressCount": @"ec2:secondaryPrivateIpAddressCount",
        @"associatePublicIPAddress": @"ec2:associatePublicIpAddress"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)privateIPAddressesQueryStringTransformer
{
  return [NSValueTransformer mtl_QueryStringArrayTransformerWithModelClass:[UAEC2PrivateIPAddressSpecifiction class]];
}

+ (NSValueTransformer *)deviceIndexXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)groupsXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForArrayOfStrings];
}

+ (NSValueTransformer *)deleteOnTerminationXMLTransformer
{
    return [MTLValueTransformer UA_XMLTransformerForBooleanString];
}

+ (NSValueTransformer *)privateIPAddressesXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAEC2PrivateIPAddressSpecifiction class]];
}

+ (NSValueTransformer *)secondaryPrivateIPAddressCountXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)associatePublicIPAddressXMLTransformer
{
    return [MTLValueTransformer UA_XMLTransformerForBooleanString];
}

@end
