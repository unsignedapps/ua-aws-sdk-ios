//
//  UAASLaunchConfiguration.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAASLaunchConfiguration.h"
#import "UAASBlockDeviceMapping.h"

@implementation UAASLaunchConfiguration

@synthesize launchConfigurationName=_launchConfigurationName, launchConfigurationARN=_launchConfigurationARN, imageID=_imageID, keyName=_keyName, securityGroups=_securityGroups, userData=_userData, instanceType=_instanceType, kernelID=_kernelID, ramdiskID=_ramdiskID, blockDeviceMappings=_blockDeviceMappings, instanceMonitoring=_instanceMonitoring, spotPrice=_spotPrice, iamInstanceProfile=_iamInstanceProfile, createdTime=_createdTime, ebsOptimized=_ebsOptimized, associatePublicIPAddress=_associatePublicIPAddress;

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
        @"instanceType": @"AutoScaling:InstanceType",
        @"kernelID": @"AutoScaling:KernelId",
        @"ramdiskID": @"AutoScaling:RamdiskId",
        @"blockDeviceMappings": @"AutoScaling:BlockDeviceMappings/AutoScaling:member",
        @"instanceMonitoring": @"AutoScaling:InstanceMonitoring/AutoScaling:Enabled",
        @"spotPrice": @"AutoScaling:SpotPrice",
        @"iamInstanceProfile": @"AutoScaling:IamInstanceProfile",
        @"createdTime": @"AutoScaling:CreatedTime",
        @"ebsOptimized": @"AutoScaling:EbsOptimized",
        @"associatePublicIPAddress": @"AutoScaling:AssociatePublicIpAddress"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)blockDeviceMappingsQueryStringTransformer
{
  return [NSValueTransformer mtl_QueryStringArrayTransformerWithModelClass:[UAASBlockDeviceMapping class]];
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
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAASBlockDeviceMapping class]];
}

+ (NSValueTransformer *)createdTimeXMLTransformer
{
    return [NSValueTransformer mtl_XMLTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

@end
