//
//  UAEC2LaunchSpecificationSpecification.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2LaunchSpecificationSpecification.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2SpotPlacement.h"
#import "UAEC2BlockDeviceMapping.h"
#import "UAEC2NetworkInterfaceSpecification.h"
#import "UAEC2IAMInstanceProfileSpecification.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2LaunchSpecificationSpecification

@synthesize imageID=_imageID, keyName=_keyName, userData=_userData, addressingType=_addressingType, instanceType=_instanceType, placement=_placement, kernelID=_kernelID, ramdiskID=_ramdiskID, blockDeviceMappings=_blockDeviceMappings, monitoringEnabled=_monitoringEnabled, subnetID=_subnetID, networkInterfaces=_networkInterfaces, iamInstanceProfile=_iamInstanceProfile, ebsOptimized=_ebsOptimized, securityGroups=_securityGroups;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addDecodeBase64AdditionalAccessorForSelector:@selector(decodedUserData) propertyName:@"userData"];
		[self UA_addEncodeBase64AdditionalAccessorForSelector:@selector(setDecodedUserData:) propertyName:@"userData"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(blockDeviceMappingAtIndex:) propertyName:@"blockDeviceMappings"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(networkInterfaceAtIndex:) propertyName:@"networkInterfaces"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(securityGroupAtIndex:) propertyName:@"securityGroups"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addBlockDeviceMapping:) propertyName:@"blockDeviceMappings"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addNetworkInterface:) propertyName:@"networkInterfaces"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addSecurityGroup:) propertyName:@"securityGroups"];
	}
	return self;
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Model queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"imageID": @"ImageId",
        @"keyName": @"KeyName",
        @"userData": @"UserData",
        @"decodedUserData": [NSNull null],
        @"addressingType": @"AddressingType",
        @"instanceType": @"InstanceType",
        @"placement": @"Placement",
        @"kernelID": @"KernelId",
        @"ramdiskID": @"RamdiskId",
        @"blockDeviceMappings": @"BlockDeviceMapping",
        @"monitoringEnabled": @"Monitoring.Enabled",
        @"subnetID": @"SubnetId",
        @"networkInterfaces": @"NetworkInterface",
        @"iamInstanceProfile": @"IamInstanceProfile",
        @"ebsOptimized": @"EbsOptimized",
        @"securityGroups": @"SecurityGroup"
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
        @"imageID": @"ec2:ImageId",
        @"keyName": @"ec2:KeyName",
        @"userData": @"ec2:UserData",
        @"decodedUserData": [NSNull null],
        @"addressingType": @"ec2:AddressingType",
        @"instanceType": @"ec2:InstanceType",
        @"placement": @"ec2:Placement",
        @"kernelID": @"ec2:KernelId",
        @"ramdiskID": @"ec2:RamdiskId",
        @"blockDeviceMappings": @"ec2:BlockDeviceMapping/ec2:BlockDeviceMappings",
        @"monitoringEnabled": @"ec2:Monitoring.Enabled",
        @"subnetID": @"ec2:SubnetId",
        @"networkInterfaces": @"ec2:NetworkInterface/ec2:NetworkInterfaces",
        @"iamInstanceProfile": @"ec2:IamInstanceProfile",
        @"ebsOptimized": @"ec2:EbsOptimized",
        @"securityGroups": @"ec2:SecurityGroup/ec2:SecurityGroups"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)placementQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UAEC2SpotPlacement class]];
}

+ (NSValueTransformer *)blockDeviceMappingsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2BlockDeviceMapping class]];
}

+ (NSValueTransformer *)monitoringEnabledQueryStringTransformer
{
    return [UAMTLValueTransformer UA_JSONTransformerForBooleanString];
}

+ (NSValueTransformer *)networkInterfacesQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2NetworkInterfaceSpecification class]];
}

+ (NSValueTransformer *)iamInstanceProfileQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UAEC2IAMInstanceProfileSpecification class]];
}

+ (NSValueTransformer *)ebsOptimizedQueryStringTransformer
{
    return [UAMTLValueTransformer UA_JSONTransformerForBooleanString];
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
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2NetworkInterfaceSpecification class]];
}

+ (NSValueTransformer *)iamInstanceProfileXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UAEC2IAMInstanceProfileSpecification class]];
}

+ (NSValueTransformer *)ebsOptimizedXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

+ (NSValueTransformer *)securityGroupsXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForArrayOfStrings];
}

@end

#pragma clang diagnostic pop