//
//  UAEC2LaunchSpecification.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
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
        @"imageID": @"imageId",
        @"keyName": @"keyName",
        @"securityGroups": @"groupSet",
        @"userData": @"userData",
        @"addressingType": @"addressingType",
        @"instanceType": @"instanceType",
        @"placement": @"placement",
        @"kernelID": @"kernelId",
        @"ramdiskID": @"ramdiskId",
        @"blockDeviceMappings": @"blockDeviceMapping",
        @"monitoringEnabled": @"monitoringEnabled",
        @"subnetID": @"subnetId",
        @"networkInterfaces": @"networkInterfaceSet",
        @"iamInstanceProfile": @"iamInstanceProfile",
        @"ebsOptimized": @"ebsOptimized"
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
  return [NSValueTransformer mtl_QueryStringArrayTransformerWithModelClass:[UAEC2GroupIdentifier class]];
}

+ (NSValueTransformer *)placementQueryStringTransformer
{
  return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[UAEC2SpotPlacement class]];
}

+ (NSValueTransformer *)blockDeviceMappingsQueryStringTransformer
{
  return [NSValueTransformer mtl_QueryStringArrayTransformerWithModelClass:[UAEC2BlockDeviceMapping class]];
}

+ (NSValueTransformer *)networkInterfacesQueryStringTransformer
{
  return [NSValueTransformer mtl_QueryStringArrayTransformerWithModelClass:[UAEC2InstanceNetworkInterfaceSpecification class]];
}

+ (NSValueTransformer *)iamInstanceProfileQueryStringTransformer
{
  return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[UAEC2IAMInstanceProfileSpecification class]];
}

+ (NSValueTransformer *)securityGroupsXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAEC2GroupIdentifier class]];
}

+ (NSValueTransformer *)placementXMLTransformer
{
  return [NSValueTransformer mtl_XMLTransformerWithModelClass:[UAEC2SpotPlacement class]];
}

+ (NSValueTransformer *)blockDeviceMappingsXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAEC2BlockDeviceMapping class]];
}

+ (NSValueTransformer *)networkInterfacesXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAEC2InstanceNetworkInterfaceSpecification class]];
}

+ (NSValueTransformer *)iamInstanceProfileXMLTransformer
{
  return [NSValueTransformer mtl_XMLTransformerWithModelClass:[UAEC2IAMInstanceProfileSpecification class]];
}

@end
