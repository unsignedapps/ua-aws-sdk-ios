//
//  UAASLaunchConfiguration.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASLaunchConfiguration.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAASBlockDeviceMapping.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAASLaunchConfiguration

@synthesize launchConfigurationName=_launchConfigurationName, launchConfigurationARN=_launchConfigurationARN, imageID=_imageID, keyName=_keyName, securityGroups=_securityGroups, userData=_userData, instanceType=_instanceType, kernelID=_kernelID, ramdiskID=_ramdiskID, blockDeviceMappings=_blockDeviceMappings, instanceMonitoring=_instanceMonitoring, spotPrice=_spotPrice, iamInstanceProfile=_iamInstanceProfile, createdTime=_createdTime, ebsOptimized=_ebsOptimized, associatePublicIPAddress=_associatePublicIPAddress, placementTenancy=_placementTenancy;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addDecodeBase64AdditionalAccessorForSelector:@selector(decodedUserData) propertyName:@"userData"];
		[self UA_addEncodeBase64AdditionalAccessorForSelector:@selector(setDecodedUserData:) propertyName:@"userData"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(securityGroupAtIndex:) propertyName:@"securityGroups"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(blockDeviceMappingAtIndex:) propertyName:@"blockDeviceMappings"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addSecurityGroup:) propertyName:@"securityGroups"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addBlockDeviceMapping:) propertyName:@"blockDeviceMappings"];
	}
	return self;
}

+ (NSString *)XPathPrefix
{
    return @"./";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAASModel XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"launchConfigurationName": @"AutoScaling:LaunchConfigurationName",
        @"launchConfigurationARN": @"AutoScaling:LaunchConfigurationARN",
        @"imageID": @"AutoScaling:ImageId",
        @"keyName": @"AutoScaling:KeyName",
        @"securityGroups": @"AutoScaling:SecurityGroups/AutoScaling:member",
        @"userData": @"AutoScaling:UserData",
        @"decodedUserData": [NSNull null],
        @"instanceType": @"AutoScaling:InstanceType",
        @"kernelID": @"AutoScaling:KernelId",
        @"ramdiskID": @"AutoScaling:RamdiskId",
        @"blockDeviceMappings": @"AutoScaling:BlockDeviceMappings/AutoScaling:member",
        @"instanceMonitoring": @"AutoScaling:InstanceMonitoring/AutoScaling:Enabled",
        @"spotPrice": @"AutoScaling:SpotPrice",
        @"iamInstanceProfile": @"AutoScaling:IamInstanceProfile",
        @"createdTime": @"AutoScaling:CreatedTime",
        @"ebsOptimized": @"AutoScaling:EbsOptimized",
        @"associatePublicIPAddress": @"AutoScaling:AssociatePublicIpAddress",
        @"placementTenancy": @"AutoScaling:PlacementTenancy"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)blockDeviceMappingsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAASBlockDeviceMapping class]];
}

+ (NSValueTransformer *)createdTimeQueryStringTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)securityGroupsXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForArrayOfStrings];
}

+ (NSValueTransformer *)blockDeviceMappingsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAASBlockDeviceMapping class]];
}

+ (NSValueTransformer *)instanceMonitoringXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

+ (NSValueTransformer *)createdTimeXMLTransformer
{
    return [NSValueTransformer UAMTL_XMLTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)ebsOptimizedXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

+ (NSValueTransformer *)associatePublicIPAddressXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

@end

#pragma clang diagnostic pop