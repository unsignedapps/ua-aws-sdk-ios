//
//  UAEC2Instance.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Instance.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2ProductCode.h"
#import "UAEC2Placement.h"
#import "UAEC2StateReason.h"
#import "UAEC2InstanceBlockDeviceMapping.h"
#import "UAEC2InstanceLicense.h"
#import "UAEC2Tag.h"
#import "UAEC2GroupIdentifier.h"
#import "UAEC2InstanceNetworkInterface.h"
#import "UAEC2IAMInstanceProfile.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2Instance

@synthesize instanceID=_instanceID, imageID=_imageID, state=_state, privateDNSName=_privateDNSName, publicDNSName=_publicDNSName, stateTransitionReason=_stateTransitionReason, keyName=_keyName, amiLaunchIndex=_amiLaunchIndex, productCodes=_productCodes, instanceType=_instanceType, launchTime=_launchTime, placement=_placement, kernelID=_kernelID, ramdiskID=_ramdiskID, platform=_platform, monitoring=_monitoring, subnetID=_subnetID, vpcID=_vpcID, privateIPAddress=_privateIPAddress, publicIPAddress=_publicIPAddress, stateReason=_stateReason, architecture=_architecture, rootDeviceType=_rootDeviceType, rootDeviceName=_rootDeviceName, blockDeviceMappings=_blockDeviceMappings, virtualizationType=_virtualizationType, instanceLifecycle=_instanceLifecycle, spotInstanceRequestID=_spotInstanceRequestID, license=_license, clientToken=_clientToken, tags=_tags, securityGroups=_securityGroups, sourceDestCheck=_sourceDestCheck, hypervisor=_hypervisor, networkInterfaces=_networkInterfaces, iamInstanceProfile=_iamInstanceProfile, ebsOptimized=_ebsOptimized, sriovNetSupport=_sriovNetSupport;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(productCodeAtIndex:) propertyName:@"productCodes"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(blockDeviceMappingAtIndex:) propertyName:@"blockDeviceMappings"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(tagAtIndex:) propertyName:@"tags"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(securityGroupAtIndex:) propertyName:@"securityGroups"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(networkInterfaceAtIndex:) propertyName:@"networkInterfaces"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addProductCode:) propertyName:@"productCodes"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addBlockDeviceMapping:) propertyName:@"blockDeviceMappings"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addTag:) propertyName:@"tags"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addSecurityGroup:) propertyName:@"securityGroups"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addNetworkInterface:) propertyName:@"networkInterfaces"];
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
    NSMutableDictionary *keyPaths = [[UAEC2Model XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"instanceID": @"ec2:instanceId",
        @"imageID": @"ec2:imageId",
        @"state": @"ec2:instanceState/ec2:name",
        @"privateDNSName": @"ec2:privateDnsName",
        @"publicDNSName": @"ec2:dnsName",
        @"stateTransitionReason": @"ec2:reason",
        @"keyName": @"ec2:keyName",
        @"amiLaunchIndex": @"ec2:amiLaunchIndex",
        @"productCodes": @"ec2:productCodes/ec2:item",
        @"instanceType": @"ec2:instanceType",
        @"launchTime": @"ec2:launchTime",
        @"placement": @"ec2:placement",
        @"kernelID": @"ec2:kernelId",
        @"ramdiskID": @"ec2:ramdiskId",
        @"platform": @"ec2:platform",
        @"monitoring": @"ec2:monitoring/ec2:state",
        @"subnetID": @"ec2:subnetId",
        @"vpcID": @"ec2:vpcId",
        @"privateIPAddress": @"ec2:privateIpAddress",
        @"publicIPAddress": @"ec2:ipAddress",
        @"stateReason": @"ec2:stateReason",
        @"architecture": @"ec2:architecture",
        @"rootDeviceType": @"ec2:rootDeviceType",
        @"rootDeviceName": @"ec2:rootDeviceName",
        @"blockDeviceMappings": @"ec2:blockDeviceMapping/ec2:item",
        @"virtualizationType": @"ec2:virtualizationType",
        @"instanceLifecycle": @"ec2:instanceLifecycle",
        @"spotInstanceRequestID": @"ec2:spotInstanceRequestId",
        @"license": @"ec2:license",
        @"clientToken": @"ec2:clientToken",
        @"tags": @"ec2:tagSet/ec2:item",
        @"securityGroups": @"ec2:groupSet/ec2:item",
        @"sourceDestCheck": @"ec2:sourceDestCheck",
        @"hypervisor": @"ec2:hypervisor",
        @"networkInterfaces": @"ec2:networkInterfaceSet/ec2:item",
        @"iamInstanceProfile": @"ec2:iamInstanceProfile",
        @"ebsOptimized": @"ec2:ebsOptimized",
        @"sriovNetSupport": @"ec2:sriovNetSupport"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)stateQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2InstanceStatePending), @(UAEC2InstanceStateRunning), @(UAEC2InstanceStateShuttingDown), @(UAEC2InstanceStateTerminated), @(UAEC2InstanceStateStopping), @(UAEC2InstanceStateStopped) ]
                                               stringValues:@[ @"pending", @"running", @"shutting-down", @"terminated", @"stopping", @"stopped" ]
                                               unknownValue:@(UAEC2InstanceStateUnknown)];
}

+ (NSValueTransformer *)productCodesQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2ProductCode class]];
}

+ (NSValueTransformer *)launchTimeQueryStringTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)placementQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UAEC2Placement class]];
}

+ (NSValueTransformer *)monitoringQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2InstanceMonitoringStateDisabled), @(UAEC2InstanceMonitoringStateEnabled), @(UAEC2InstanceMonitoringStatePending) ]
                                               stringValues:@[ @"disabled", @"enabled", @"pending" ]
                                               unknownValue:@(UAEC2InstanceMonitoringStateUnknown)];
}

+ (NSValueTransformer *)stateReasonQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UAEC2StateReason class]];
}

+ (NSValueTransformer *)architectureQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2InstanceArchitectureI386), @(UAEC2InstanceArchitectureX86_64) ]
                                               stringValues:@[ @"i386", @"x86_64" ]
                                               unknownValue:@(UAEC2InstanceArchitectureUnknown)];
}

+ (NSValueTransformer *)rootDeviceTypeQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2InstanceRootDeviceTypeEBS), @(UAEC2InstanceRootDeviceTypeInstanceStore) ]
                                               stringValues:@[ @"ebs", @"instance-store" ]
                                               unknownValue:@(UAEC2InstanceRootDeviceTypeUnknown)];
}

+ (NSValueTransformer *)blockDeviceMappingsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2InstanceBlockDeviceMapping class]];
}

+ (NSValueTransformer *)virtualizationTypeQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2InstanceVirtualizationTypeParavirtual), @(UAEC2InstanceVirtualizationTypeHvm) ]
                                               stringValues:@[ @"paravirtual", @"hvm" ]
                                               unknownValue:@(UAEC2InstanceVirtualizationTypeUnknown)];
}

+ (NSValueTransformer *)licenseQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UAEC2InstanceLicense class]];
}

+ (NSValueTransformer *)tagsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2Tag class]];
}

+ (NSValueTransformer *)securityGroupsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2GroupIdentifier class]];
}

+ (NSValueTransformer *)networkInterfacesQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2InstanceNetworkInterface class]];
}

+ (NSValueTransformer *)iamInstanceProfileQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UAEC2IAMInstanceProfile class]];
}

+ (NSValueTransformer *)stateXMLTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2InstanceStatePending), @(UAEC2InstanceStateRunning), @(UAEC2InstanceStateShuttingDown), @(UAEC2InstanceStateTerminated), @(UAEC2InstanceStateStopping), @(UAEC2InstanceStateStopped) ]
                                               stringValues:@[ @"pending", @"running", @"shutting-down", @"terminated", @"stopping", @"stopped" ]
                                               unknownValue:@(UAEC2InstanceStateUnknown)];
}

+ (NSValueTransformer *)amiLaunchIndexXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)productCodesXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2ProductCode class]];
}

+ (NSValueTransformer *)launchTimeXMLTransformer
{
    return [NSValueTransformer UAMTL_XMLTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)placementXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UAEC2Placement class]];
}

+ (NSValueTransformer *)monitoringXMLTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2InstanceMonitoringStateDisabled), @(UAEC2InstanceMonitoringStateEnabled), @(UAEC2InstanceMonitoringStatePending) ]
                                               stringValues:@[ @"disabled", @"enabled", @"pending" ]
                                               unknownValue:@(UAEC2InstanceMonitoringStateUnknown)];
}

+ (NSValueTransformer *)stateReasonXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UAEC2StateReason class]];
}

+ (NSValueTransformer *)architectureXMLTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2InstanceArchitectureI386), @(UAEC2InstanceArchitectureX86_64) ]
                                               stringValues:@[ @"i386", @"x86_64" ]
                                               unknownValue:@(UAEC2InstanceArchitectureUnknown)];
}

+ (NSValueTransformer *)rootDeviceTypeXMLTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2InstanceRootDeviceTypeEBS), @(UAEC2InstanceRootDeviceTypeInstanceStore) ]
                                               stringValues:@[ @"ebs", @"instance-store" ]
                                               unknownValue:@(UAEC2InstanceRootDeviceTypeUnknown)];
}

+ (NSValueTransformer *)blockDeviceMappingsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2InstanceBlockDeviceMapping class]];
}

+ (NSValueTransformer *)virtualizationTypeXMLTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2InstanceVirtualizationTypeParavirtual), @(UAEC2InstanceVirtualizationTypeHvm) ]
                                               stringValues:@[ @"paravirtual", @"hvm" ]
                                               unknownValue:@(UAEC2InstanceVirtualizationTypeUnknown)];
}

+ (NSValueTransformer *)licenseXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UAEC2InstanceLicense class]];
}

+ (NSValueTransformer *)tagsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2Tag class]];
}

+ (NSValueTransformer *)securityGroupsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2GroupIdentifier class]];
}

+ (NSValueTransformer *)sourceDestCheckXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

+ (NSValueTransformer *)networkInterfacesXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2InstanceNetworkInterface class]];
}

+ (NSValueTransformer *)iamInstanceProfileXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UAEC2IAMInstanceProfile class]];
}

+ (NSValueTransformer *)ebsOptimizedXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

@end

#pragma clang diagnostic pop