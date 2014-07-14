//
//  UAEC2LaunchSpecification.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2LaunchSpecification.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2GroupIdentifier.h"
#import "UAEC2SpotPlacement.h"
#import "UAEC2BlockDeviceMapping.h"
#import "UAEC2InstanceNetworkInterfaceSpecification.h"
#import "UAEC2IAMInstanceProfileSpecification.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2LaunchSpecification

@synthesize imageID=_imageID, keyName=_keyName, securityGroups=_securityGroups, userData=_userData, addressingType=_addressingType, instanceType=_instanceType, placement=_placement, kernelID=_kernelID, ramdiskID=_ramdiskID, blockDeviceMappings=_blockDeviceMappings, monitoringEnabled=_monitoringEnabled, subnetID=_subnetID, networkInterfaces=_networkInterfaces, iamInstanceProfile=_iamInstanceProfile, ebsOptimized=_ebsOptimized;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addDecodeBase64AdditionalAccessorForSelector:@selector(decodedUserData) propertyName:@"userData"];
		[self UA_addEncodeBase64AdditionalAccessorForSelector:@selector(setDecodedUserData:) propertyName:@"userData"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(securityGroupAtIndex:) propertyName:@"securityGroups"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(blockDeviceMappingAtIndex:) propertyName:@"blockDeviceMappings"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(networkInterfaceAtIndex:) propertyName:@"networkInterfaces"];
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

#pragma clang diagnostic pop