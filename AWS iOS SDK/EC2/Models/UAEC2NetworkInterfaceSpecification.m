//
//  UAEC2NetworkInterfaceSpecification.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2NetworkInterfaceSpecification.h"
#import "UAEC2PrivateIPAddressSpecification.h"

@implementation UAEC2NetworkInterfaceSpecification

@synthesize networkInterfaceID=_networkInterfaceID, deviceIndex=_deviceIndex, subnetID=_subnetID, descriptionValue=_descriptionValue, privateIPAddress=_privateIPAddress, groups=_groups, deleteOnTermination=_deleteOnTermination, privateIPAddresses=_privateIPAddresses, secondaryPrivateIPAddressCount=_secondaryPrivateIPAddressCount, associatePublicIPAddress=_associatePublicIPAddress;

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Model queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"networkInterfaceID": @"NetworkInterfaceId",
        @"deviceIndex": @"DeviceIndex",
        @"subnetID": @"SubnetId",
        @"descriptionValue": @"DescriptionValue",
        @"privateIPAddress": @"PrivateIpAddress",
        @"groups": @"SecurityGroupId",
        @"deleteOnTermination": @"DeleteOnTermination",
        @"privateIPAddresses": @"PrivateIpAddresses",
        @"secondaryPrivateIPAddressCount": @"SecondaryPrivateIpAddressCount",
        @"associatePublicIPAddress": @"AssociatePublicIpAddress"
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
        @"networkInterfaceID": @"ec2:NetworkInterfaceId",
        @"deviceIndex": @"ec2:DeviceIndex",
        @"subnetID": @"ec2:SubnetId",
        @"descriptionValue": @"ec2:DescriptionValue",
        @"privateIPAddress": @"ec2:PrivateIpAddress",
        @"groups": @"ec2:SecurityGroupId/ec2:Groups",
        @"deleteOnTermination": @"ec2:DeleteOnTermination",
        @"privateIPAddresses": @"ec2:PrivateIpAddresses/ec2:PrivateIpAddresses",
        @"secondaryPrivateIPAddressCount": @"ec2:SecondaryPrivateIpAddressCount",
        @"associatePublicIPAddress": @"ec2:AssociatePublicIpAddress"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)deleteOnTerminationQueryStringTransformer
{
    return [MTLValueTransformer UA_JSONTransformerForBooleanString];
}

+ (NSValueTransformer *)privateIPAddressesQueryStringTransformer
{
	return [NSValueTransformer mtl_QueryStringArrayTransformerWithModelClass:[UAEC2PrivateIPAddressSpecification class]];
}

+ (NSValueTransformer *)associatePublicIPAddressQueryStringTransformer
{
    return [MTLValueTransformer UA_JSONTransformerForBooleanString];
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
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAEC2PrivateIPAddressSpecification class]];
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
