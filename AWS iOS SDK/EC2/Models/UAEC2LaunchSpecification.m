//
//  UAEC2LaunchSpecification.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2LaunchSpecification.h"
#import "UAEC2GroupIdentifier.h"
#import "UAEC2SpotPlacement.h"
#import "UAEC2BlockDeviceMapping.h"
#import "UAEC2InstanceNetworkInterfaceSpecification.h"
#import "UAEC2IAMInstanceProfileSpecification.h"

@implementation UAEC2LaunchSpecification

@synthesize imageID=_imageID, keyName=_keyName, securityGroups=_securityGroups, userData=_userData, addressingType=_addressingType, instanceType=_instanceType, placement=_placement, kernelID=_kernelID, ramdiskID=_ramdiskID, blockDeviceMappings=_blockDeviceMappings, monitoringEnabled=_monitoringEnabled, subnetID=_subnetID, networkInterfaces=_networkInterfaces, iamInstanceProfile=_iamInstanceProfile, ebsOptimized=_ebsOptimized;

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Model queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"imageID": @"ImageId",
        @"keyName": @"KeyName",
        @"securityGroups": @"GroupSet",
        @"userData": @"UserData",
        @"decodedUserData": [NSNull null],
        @"addressingType": @"AddressingType",
        @"instanceType": @"InstanceType",
        @"placement": @"Placement",
        @"kernelID": @"KernelId",
        @"ramdiskID": @"RamdiskId",
        @"blockDeviceMappings": @"BlockDeviceMapping",
        @"monitoringEnabled": @"MonitoringEnabled",
        @"subnetID": @"SubnetId",
        @"networkInterfaces": @"NetworkInterfaceSet",
        @"iamInstanceProfile": @"IamInstanceProfile",
        @"ebsOptimized": @"EbsOptimized"
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
        @"imageID": @"ec2:imageId",
        @"keyName": @"ec2:keyName",
        @"securityGroups": @"ec2:groupSet/ec2:item",
        @"userData": @"ec2:userData",
        @"decodedUserData": [NSNull null],
        @"addressingType": @"ec2:addressingType",
        @"instanceType": @"ec2:instanceType",
        @"placement": @"ec2:placement",
        @"kernelID": @"ec2:kernelId",
        @"ramdiskID": @"ec2:ramdiskId",
        @"blockDeviceMappings": @"ec2:blockDeviceMapping/ec2:item",
        @"monitoringEnabled": @"ec2:monitoringEnabled",
        @"subnetID": @"ec2:subnetId",
        @"networkInterfaces": @"ec2:networkInterfaceSet/ec2:item",
        @"iamInstanceProfile": @"ec2:iamInstanceProfile",
        @"ebsOptimized": @"ec2:ebsOptimized"
    }];
    return [keyPaths copy];
}

- (NSString *)decodedUserData
{
    if (self.userData == nil)
        return nil;
    
    NSData *data = [[NSData alloc] initWithBase64EncodedString:self.userData options:NSDataBase64DecodingIgnoreUnknownCharacters];
    return [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
}

- (void)setDecodedUserData:(NSString *)decodedUserData
{
    if (decodedUserData == nil)
        [self setUserData:nil];
    else
		[self setUserData:[[decodedUserData dataUsingEncoding:NSUTF8StringEncoding] base64EncodedStringWithOptions:kNilOptions]];
}

- (void)setImageID:(NSString *)imageID
{
	_imageID = imageID;
	
	if (![self.UA_dirtyProperties containsObject:@"imageID"])
		[self.UA_dirtyProperties addObject:@"imageID"];
}

- (void)setKeyName:(NSString *)keyName
{
	_keyName = keyName;
	
	if (![self.UA_dirtyProperties containsObject:@"keyName"])
		[self.UA_dirtyProperties addObject:@"keyName"];
}

- (void)setSecurityGroups:(NSMutableArray *)securityGroups
{
	_securityGroups = securityGroups;
	
	if (![self.UA_dirtyProperties containsObject:@"securityGroups"])
		[self.UA_dirtyProperties addObject:@"securityGroups"];
}

- (void)setUserData:(NSString *)userData
{
	_userData = userData;
	
	if (![self.UA_dirtyProperties containsObject:@"userData"])
		[self.UA_dirtyProperties addObject:@"userData"];
}

- (void)setAddressingType:(NSString *)addressingType
{
	_addressingType = addressingType;
	
	if (![self.UA_dirtyProperties containsObject:@"addressingType"])
		[self.UA_dirtyProperties addObject:@"addressingType"];
}

- (void)setInstanceType:(NSString *)instanceType
{
	_instanceType = instanceType;
	
	if (![self.UA_dirtyProperties containsObject:@"instanceType"])
		[self.UA_dirtyProperties addObject:@"instanceType"];
}

- (void)setPlacement:(UAEC2SpotPlacement *)placement
{
	_placement = placement;
	
	if (![self.UA_dirtyProperties containsObject:@"placement"])
		[self.UA_dirtyProperties addObject:@"placement"];
}

- (void)setKernelID:(NSString *)kernelID
{
	_kernelID = kernelID;
	
	if (![self.UA_dirtyProperties containsObject:@"kernelID"])
		[self.UA_dirtyProperties addObject:@"kernelID"];
}

- (void)setRamdiskID:(NSString *)ramdiskID
{
	_ramdiskID = ramdiskID;
	
	if (![self.UA_dirtyProperties containsObject:@"ramdiskID"])
		[self.UA_dirtyProperties addObject:@"ramdiskID"];
}

- (void)setBlockDeviceMappings:(NSMutableArray *)blockDeviceMappings
{
	_blockDeviceMappings = blockDeviceMappings;
	
	if (![self.UA_dirtyProperties containsObject:@"blockDeviceMappings"])
		[self.UA_dirtyProperties addObject:@"blockDeviceMappings"];
}

- (void)setMonitoringEnabled:(BOOL)monitoringEnabled
{
	_monitoringEnabled = monitoringEnabled;
	
	if (![self.UA_dirtyProperties containsObject:@"monitoringEnabled"])
		[self.UA_dirtyProperties addObject:@"monitoringEnabled"];
}

- (void)setSubnetID:(NSString *)subnetID
{
	_subnetID = subnetID;
	
	if (![self.UA_dirtyProperties containsObject:@"subnetID"])
		[self.UA_dirtyProperties addObject:@"subnetID"];
}

- (void)setNetworkInterfaces:(NSMutableArray *)networkInterfaces
{
	_networkInterfaces = networkInterfaces;
	
	if (![self.UA_dirtyProperties containsObject:@"networkInterfaces"])
		[self.UA_dirtyProperties addObject:@"networkInterfaces"];
}

- (void)setIamInstanceProfile:(UAEC2IAMInstanceProfileSpecification *)iamInstanceProfile
{
	_iamInstanceProfile = iamInstanceProfile;
	
	if (![self.UA_dirtyProperties containsObject:@"iamInstanceProfile"])
		[self.UA_dirtyProperties addObject:@"iamInstanceProfile"];
}

- (void)setEbsOptimized:(BOOL)ebsOptimized
{
	_ebsOptimized = ebsOptimized;
	
	if (![self.UA_dirtyProperties containsObject:@"ebsOptimized"])
		[self.UA_dirtyProperties addObject:@"ebsOptimized"];
}

+ (NSValueTransformer *)securityGroupsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2GroupIdentifier class]];
}

+ (NSValueTransformer *)placementQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UAEC2SpotPlacement class]];
}

+ (NSValueTransformer *)blockDeviceMappingsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2BlockDeviceMapping class]];
}

+ (NSValueTransformer *)networkInterfacesQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2InstanceNetworkInterfaceSpecification class]];
}

+ (NSValueTransformer *)iamInstanceProfileQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UAEC2IAMInstanceProfileSpecification class]];
}

+ (NSValueTransformer *)securityGroupsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2GroupIdentifier class]];
}

+ (NSValueTransformer *)placementXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UAEC2SpotPlacement class]];
}

+ (NSValueTransformer *)blockDeviceMappingsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2BlockDeviceMapping class]];
}

+ (NSValueTransformer *)monitoringEnabledXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

+ (NSValueTransformer *)networkInterfacesXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2InstanceNetworkInterfaceSpecification class]];
}

+ (NSValueTransformer *)iamInstanceProfileXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UAEC2IAMInstanceProfileSpecification class]];
}

+ (NSValueTransformer *)ebsOptimizedXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

@end
