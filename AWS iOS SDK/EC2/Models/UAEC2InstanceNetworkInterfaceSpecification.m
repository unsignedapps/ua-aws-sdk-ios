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

- (void)setNetworkInterfaceID:(NSString *)networkInterfaceID
{
	_networkInterfaceID = networkInterfaceID;
	
	if (![self.UA_dirtyProperties containsObject:@"networkInterfaceID"])
		[self.UA_dirtyProperties addObject:@"networkInterfaceID"];
}

- (void)setDeviceIndex:(NSNumber *)deviceIndex
{
	_deviceIndex = deviceIndex;
	
	if (![self.UA_dirtyProperties containsObject:@"deviceIndex"])
		[self.UA_dirtyProperties addObject:@"deviceIndex"];
}

- (void)setSubnetID:(NSString *)subnetID
{
	_subnetID = subnetID;
	
	if (![self.UA_dirtyProperties containsObject:@"subnetID"])
		[self.UA_dirtyProperties addObject:@"subnetID"];
}

- (void)setDescriptionValue:(NSString *)descriptionValue
{
	_descriptionValue = descriptionValue;
	
	if (![self.UA_dirtyProperties containsObject:@"descriptionValue"])
		[self.UA_dirtyProperties addObject:@"descriptionValue"];
}

- (void)setPrivateIPAddress:(NSString *)privateIPAddress
{
	_privateIPAddress = privateIPAddress;
	
	if (![self.UA_dirtyProperties containsObject:@"privateIPAddress"])
		[self.UA_dirtyProperties addObject:@"privateIPAddress"];
}

- (void)setGroups:(NSMutableArray *)groups
{
	_groups = groups;
	
	if (![self.UA_dirtyProperties containsObject:@"groups"])
		[self.UA_dirtyProperties addObject:@"groups"];
}

- (void)setDeleteOnTermination:(BOOL)deleteOnTermination
{
	_deleteOnTermination = deleteOnTermination;
	
	if (![self.UA_dirtyProperties containsObject:@"deleteOnTermination"])
		[self.UA_dirtyProperties addObject:@"deleteOnTermination"];
}

- (void)setPrivateIPAddresses:(NSMutableArray *)privateIPAddresses
{
	_privateIPAddresses = privateIPAddresses;
	
	if (![self.UA_dirtyProperties containsObject:@"privateIPAddresses"])
		[self.UA_dirtyProperties addObject:@"privateIPAddresses"];
}

- (void)setSecondaryPrivateIPAddressCount:(NSNumber *)secondaryPrivateIPAddressCount
{
	_secondaryPrivateIPAddressCount = secondaryPrivateIPAddressCount;
	
	if (![self.UA_dirtyProperties containsObject:@"secondaryPrivateIPAddressCount"])
		[self.UA_dirtyProperties addObject:@"secondaryPrivateIPAddressCount"];
}

- (void)setAssociatePublicIPAddress:(BOOL)associatePublicIPAddress
{
	_associatePublicIPAddress = associatePublicIPAddress;
	
	if (![self.UA_dirtyProperties containsObject:@"associatePublicIPAddress"])
		[self.UA_dirtyProperties addObject:@"associatePublicIPAddress"];
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
