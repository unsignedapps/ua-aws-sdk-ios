//
//  UAEC2InstanceNetworkInterfaceSpecification.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2InstanceNetworkInterfaceSpecification.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2PrivateIPAddressSpecifiction.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2InstanceNetworkInterfaceSpecification

@synthesize networkInterfaceID=_networkInterfaceID, deviceIndex=_deviceIndex, subnetID=_subnetID, descriptionValue=_descriptionValue, privateIPAddress=_privateIPAddress, groups=_groups, deleteOnTermination=_deleteOnTermination, privateIPAddresses=_privateIPAddresses, secondaryPrivateIPAddressCount=_secondaryPrivateIPAddressCount, associatePublicIPAddress=_associatePublicIPAddress;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(groupAtIndex:) propertyName:@"groups"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(privateIPAddressAtIndex:) propertyName:@"privateIPAddresses"];
	}
	return self;
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Model queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"networkInterfaceID": @"NetworkInterfaceId",
        @"deviceIndex": @"DeviceIndex",
        @"subnetID": @"SubnetId",
        @"descriptionValue": @"Description",
        @"privateIPAddress": @"PrivateIpAddress",
        @"groups": @"SecurityGroupId",
        @"deleteOnTermination": @"DeleteOnTermination",
        @"privateIPAddresses": @"PrivateIpAddressesSet",
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
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2PrivateIPAddressSpecifiction class]];
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
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

+ (NSValueTransformer *)privateIPAddressesXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2PrivateIPAddressSpecifiction class]];
}

+ (NSValueTransformer *)secondaryPrivateIPAddressCountXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)associatePublicIPAddressXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

@end

#pragma clang diagnostic pop