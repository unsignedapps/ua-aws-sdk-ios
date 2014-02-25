//
//  UAEC2Instance.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Instance.h"
#import "UAEC2ProductCode.h"
#import "UAEC2Placement.h"
#import "UAEC2StateReason.h"
#import "UAEC2InstanceBlockDeviceMapping.h"
#import "UAEC2InstanceLicense.h"
#import "UAEC2Tag.h"
#import "UAEC2GroupIdentifier.h"
#import "UAEC2InstanceNetworkInterface.h"
#import "UAEC2IAMInstanceProfile.h"

@implementation UAEC2Instance

@synthesize instanceID=_instanceID, imageID=_imageID, state=_state, privateDNSName=_privateDNSName, publicDNSName=_publicDNSName, stateTransitionReason=_stateTransitionReason, keyName=_keyName, amiLaunchIndex=_amiLaunchIndex, productCodes=_productCodes, instanceType=_instanceType, launchTime=_launchTime, placement=_placement, kernelID=_kernelID, ramdiskID=_ramdiskID, platform=_platform, monitoring=_monitoring, subnetID=_subnetID, vpcID=_vpcID, privateIPAddress=_privateIPAddress, publicIPAddress=_publicIPAddress, stateReason=_stateReason, architecture=_architecture, rootDeviceType=_rootDeviceType, rootDeviceName=_rootDeviceName, blockDeviceMappings=_blockDeviceMappings, virtualizationType=_virtualizationType, instanceLifecycle=_instanceLifecycle, spotInstanceRequestID=_spotInstanceRequestID, license=_license, clientToken=_clientToken, tags=_tags, securityGroups=_securityGroups, sourceDestCheck=_sourceDestCheck, hypervisor=_hypervisor, networkInterfaces=_networkInterfaces, iamInstanceProfile=_iamInstanceProfile, ebsOptimized=_ebsOptimized, sriovNetSupport=_sriovNetSupport;

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
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value)
    {
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"pending"])
		    return @(UAEC2InstanceStatePending);
		if ([value isEqualToString:@"running"])
		    return @(UAEC2InstanceStateRunning);
		if ([value isEqualToString:@"shutting-down"])
		    return @(UAEC2InstanceStateShuttingDown);
		if ([value isEqualToString:@"terminated"])
		    return @(UAEC2InstanceStateTerminated);
		if ([value isEqualToString:@"stopping"])
		    return @(UAEC2InstanceStateStopping);
		if ([value isEqualToString:@"stopped"])
		    return @(UAEC2InstanceStateStopped);

		return @(UAEC2InstanceStateUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAEC2InstanceState castValue = (UAEC2InstanceState)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAEC2InstanceStatePending:
			    return @"pending";
			case UAEC2InstanceStateRunning:
			    return @"running";
			case UAEC2InstanceStateShuttingDown:
			    return @"shutting-down";
			case UAEC2InstanceStateTerminated:
			    return @"terminated";
			case UAEC2InstanceStateStopping:
			    return @"stopping";
			case UAEC2InstanceStateStopped:
			    return @"stopped";

			case UAEC2InstanceStateUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)productCodesQueryStringTransformer
{
	return [NSValueTransformer mtl_QueryStringArrayTransformerWithModelClass:[UAEC2ProductCode class]];
}

+ (NSValueTransformer *)launchTimeQueryStringTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)placementQueryStringTransformer
{
	return [NSValueTransformer mtl_QueryStringDictionaryTransformerWithModelClass:[UAEC2Placement class]];
}

+ (NSValueTransformer *)monitoringQueryStringTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value)
    {
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"disabled"])
		    return @(UAEC2InstanceMonitoringStateDisabled);
		if ([value isEqualToString:@"enabled"])
		    return @(UAEC2InstanceMonitoringStateEnabled);
		if ([value isEqualToString:@"pending"])
		    return @(UAEC2InstanceMonitoringStatePending);

		return @(UAEC2InstanceMonitoringStateUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAEC2InstanceMonitoringState castValue = (UAEC2InstanceMonitoringState)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAEC2InstanceMonitoringStateDisabled:
			    return @"disabled";
			case UAEC2InstanceMonitoringStateEnabled:
			    return @"enabled";
			case UAEC2InstanceMonitoringStatePending:
			    return @"pending";

			case UAEC2InstanceMonitoringStateUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)stateReasonQueryStringTransformer
{
	return [NSValueTransformer mtl_QueryStringDictionaryTransformerWithModelClass:[UAEC2StateReason class]];
}

+ (NSValueTransformer *)architectureQueryStringTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value)
    {
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"i386"])
		    return @(UAEC2InstanceArchitectureI386);
		if ([value isEqualToString:@"x86_64"])
		    return @(UAEC2InstanceArchitectureX86_64);

		return @(UAEC2InstanceArchitectureUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAEC2InstanceArchitecture castValue = (UAEC2InstanceArchitecture)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAEC2InstanceArchitectureI386:
			    return @"i386";
			case UAEC2InstanceArchitectureX86_64:
			    return @"x86_64";

			case UAEC2InstanceArchitectureUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)rootDeviceTypeQueryStringTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value)
    {
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"ebs"])
		    return @(UAEC2InstanceRootDeviceTypeEBS);
		if ([value isEqualToString:@"instance-store"])
		    return @(UAEC2InstanceRootDeviceTypeInstanceStore);

		return @(UAEC2InstanceRootDeviceTypeUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAEC2InstanceRootDeviceType castValue = (UAEC2InstanceRootDeviceType)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAEC2InstanceRootDeviceTypeEBS:
			    return @"ebs";
			case UAEC2InstanceRootDeviceTypeInstanceStore:
			    return @"instance-store";

			case UAEC2InstanceRootDeviceTypeUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)blockDeviceMappingsQueryStringTransformer
{
	return [NSValueTransformer mtl_QueryStringArrayTransformerWithModelClass:[UAEC2InstanceBlockDeviceMapping class]];
}

+ (NSValueTransformer *)virtualizationTypeQueryStringTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value)
    {
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"paravirtual"])
		    return @(UAEC2InstanceVirtualizationTypeParavirtual);
		if ([value isEqualToString:@"hvm"])
		    return @(UAEC2InstanceVirtualizationTypeHvm);

		return @(UAEC2InstanceVirtualizationTypeUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAEC2InstanceVirtualizationType castValue = (UAEC2InstanceVirtualizationType)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAEC2InstanceVirtualizationTypeParavirtual:
			    return @"paravirtual";
			case UAEC2InstanceVirtualizationTypeHvm:
			    return @"hvm";

			case UAEC2InstanceVirtualizationTypeUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)licenseQueryStringTransformer
{
	return [NSValueTransformer mtl_QueryStringDictionaryTransformerWithModelClass:[UAEC2InstanceLicense class]];
}

+ (NSValueTransformer *)tagsQueryStringTransformer
{
	return [NSValueTransformer mtl_QueryStringArrayTransformerWithModelClass:[UAEC2Tag class]];
}

+ (NSValueTransformer *)securityGroupsQueryStringTransformer
{
	return [NSValueTransformer mtl_QueryStringArrayTransformerWithModelClass:[UAEC2GroupIdentifier class]];
}

+ (NSValueTransformer *)networkInterfacesQueryStringTransformer
{
	return [NSValueTransformer mtl_QueryStringArrayTransformerWithModelClass:[UAEC2InstanceNetworkInterface class]];
}

+ (NSValueTransformer *)iamInstanceProfileQueryStringTransformer
{
	return [NSValueTransformer mtl_QueryStringDictionaryTransformerWithModelClass:[UAEC2IAMInstanceProfile class]];
}

+ (NSValueTransformer *)stateXMLTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSArray *nodes)
    {
		if (nodes == nil || [nodes count] == 0)
			return @(UAEC2InstanceStateUnknown);

		NSString *value = [((DDXMLElement *)nodes.firstObject) stringValue];
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"pending"])
		    return @(UAEC2InstanceStatePending);
		if ([value isEqualToString:@"running"])
		    return @(UAEC2InstanceStateRunning);
		if ([value isEqualToString:@"shutting-down"])
		    return @(UAEC2InstanceStateShuttingDown);
		if ([value isEqualToString:@"terminated"])
		    return @(UAEC2InstanceStateTerminated);
		if ([value isEqualToString:@"stopping"])
		    return @(UAEC2InstanceStateStopping);
		if ([value isEqualToString:@"stopped"])
		    return @(UAEC2InstanceStateStopped);

		return @(UAEC2InstanceStateUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAEC2InstanceState castValue = (UAEC2InstanceState)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAEC2InstanceStatePending:
			    return @"pending";
			case UAEC2InstanceStateRunning:
			    return @"running";
			case UAEC2InstanceStateShuttingDown:
			    return @"shutting-down";
			case UAEC2InstanceStateTerminated:
			    return @"terminated";
			case UAEC2InstanceStateStopping:
			    return @"stopping";
			case UAEC2InstanceStateStopped:
			    return @"stopped";

			case UAEC2InstanceStateUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)amiLaunchIndexXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)productCodesXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAEC2ProductCode class]];
}

+ (NSValueTransformer *)launchTimeXMLTransformer
{
    return [NSValueTransformer mtl_XMLTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)placementXMLTransformer
{
  return [NSValueTransformer mtl_XMLTransformerWithModelClass:[UAEC2Placement class]];
}

+ (NSValueTransformer *)monitoringXMLTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSArray *nodes)
    {
		if (nodes == nil || [nodes count] == 0)
			return @(UAEC2InstanceMonitoringStateUnknown);

		NSString *value = [((DDXMLElement *)nodes.firstObject) stringValue];
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"disabled"])
		    return @(UAEC2InstanceMonitoringStateDisabled);
		if ([value isEqualToString:@"enabled"])
		    return @(UAEC2InstanceMonitoringStateEnabled);
		if ([value isEqualToString:@"pending"])
		    return @(UAEC2InstanceMonitoringStatePending);

		return @(UAEC2InstanceMonitoringStateUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAEC2InstanceMonitoringState castValue = (UAEC2InstanceMonitoringState)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAEC2InstanceMonitoringStateDisabled:
			    return @"disabled";
			case UAEC2InstanceMonitoringStateEnabled:
			    return @"enabled";
			case UAEC2InstanceMonitoringStatePending:
			    return @"pending";

			case UAEC2InstanceMonitoringStateUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)stateReasonXMLTransformer
{
  return [NSValueTransformer mtl_XMLTransformerWithModelClass:[UAEC2StateReason class]];
}

+ (NSValueTransformer *)architectureXMLTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSArray *nodes)
    {
		if (nodes == nil || [nodes count] == 0)
			return @(UAEC2InstanceArchitectureUnknown);

		NSString *value = [((DDXMLElement *)nodes.firstObject) stringValue];
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"i386"])
		    return @(UAEC2InstanceArchitectureI386);
		if ([value isEqualToString:@"x86_64"])
		    return @(UAEC2InstanceArchitectureX86_64);

		return @(UAEC2InstanceArchitectureUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAEC2InstanceArchitecture castValue = (UAEC2InstanceArchitecture)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAEC2InstanceArchitectureI386:
			    return @"i386";
			case UAEC2InstanceArchitectureX86_64:
			    return @"x86_64";

			case UAEC2InstanceArchitectureUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)rootDeviceTypeXMLTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSArray *nodes)
    {
		if (nodes == nil || [nodes count] == 0)
			return @(UAEC2InstanceRootDeviceTypeUnknown);

		NSString *value = [((DDXMLElement *)nodes.firstObject) stringValue];
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"ebs"])
		    return @(UAEC2InstanceRootDeviceTypeEBS);
		if ([value isEqualToString:@"instance-store"])
		    return @(UAEC2InstanceRootDeviceTypeInstanceStore);

		return @(UAEC2InstanceRootDeviceTypeUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAEC2InstanceRootDeviceType castValue = (UAEC2InstanceRootDeviceType)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAEC2InstanceRootDeviceTypeEBS:
			    return @"ebs";
			case UAEC2InstanceRootDeviceTypeInstanceStore:
			    return @"instance-store";

			case UAEC2InstanceRootDeviceTypeUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)blockDeviceMappingsXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAEC2InstanceBlockDeviceMapping class]];
}

+ (NSValueTransformer *)virtualizationTypeXMLTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSArray *nodes)
    {
		if (nodes == nil || [nodes count] == 0)
			return @(UAEC2InstanceVirtualizationTypeUnknown);

		NSString *value = [((DDXMLElement *)nodes.firstObject) stringValue];
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"paravirtual"])
		    return @(UAEC2InstanceVirtualizationTypeParavirtual);
		if ([value isEqualToString:@"hvm"])
		    return @(UAEC2InstanceVirtualizationTypeHvm);

		return @(UAEC2InstanceVirtualizationTypeUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAEC2InstanceVirtualizationType castValue = (UAEC2InstanceVirtualizationType)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAEC2InstanceVirtualizationTypeParavirtual:
			    return @"paravirtual";
			case UAEC2InstanceVirtualizationTypeHvm:
			    return @"hvm";

			case UAEC2InstanceVirtualizationTypeUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)licenseXMLTransformer
{
  return [NSValueTransformer mtl_XMLTransformerWithModelClass:[UAEC2InstanceLicense class]];
}

+ (NSValueTransformer *)tagsXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAEC2Tag class]];
}

+ (NSValueTransformer *)securityGroupsXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAEC2GroupIdentifier class]];
}

+ (NSValueTransformer *)sourceDestCheckXMLTransformer
{
    return [MTLValueTransformer UA_XMLTransformerForBooleanString];
}

+ (NSValueTransformer *)networkInterfacesXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAEC2InstanceNetworkInterface class]];
}

+ (NSValueTransformer *)iamInstanceProfileXMLTransformer
{
  return [NSValueTransformer mtl_XMLTransformerWithModelClass:[UAEC2IAMInstanceProfile class]];
}

+ (NSValueTransformer *)ebsOptimizedXMLTransformer
{
    return [MTLValueTransformer UA_XMLTransformerForBooleanString];
}

@end
