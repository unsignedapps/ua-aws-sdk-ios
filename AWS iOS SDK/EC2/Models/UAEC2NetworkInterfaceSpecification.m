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
        @"descriptionValue": @"Description",
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
        @"descriptionValue": @"ec2:Description",
        @"privateIPAddress": @"ec2:PrivateIpAddress",
        @"groups": @"ec2:SecurityGroupId/ec2:Groups",
        @"deleteOnTermination": @"ec2:DeleteOnTermination",
        @"privateIPAddresses": @"ec2:PrivateIpAddresses/ec2:PrivateIpAddresses",
        @"secondaryPrivateIPAddressCount": @"ec2:SecondaryPrivateIpAddressCount",
        @"associatePublicIPAddress": @"ec2:AssociatePublicIpAddress"
    }];
    return [keyPaths copy];
}

- (NSString *)groupAtIndex:(NSUInteger)index
{
    if (self.groups == nil || index >= ([self.groups count]-1))
        return nil;

    return [self.groups objectAtIndex:index];
}

- (UAEC2PrivateIPAddressSpecification *)privateIPAddressAtIndex:(NSUInteger)index
{
    if (self.privateIPAddresses == nil || index >= ([self.privateIPAddresses count]-1))
        return nil;

    return [self.privateIPAddresses objectAtIndex:index];
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

+ (NSValueTransformer *)deleteOnTerminationQueryStringTransformer
{
    return [UAMTLValueTransformer UA_JSONTransformerForBooleanString];
}

+ (NSValueTransformer *)privateIPAddressesQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2PrivateIPAddressSpecification class]];
}

+ (NSValueTransformer *)associatePublicIPAddressQueryStringTransformer
{
    return [UAMTLValueTransformer UA_JSONTransformerForBooleanString];
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
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2PrivateIPAddressSpecification class]];
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
