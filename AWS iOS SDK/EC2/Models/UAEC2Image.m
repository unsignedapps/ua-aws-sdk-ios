//
//  UAEC2Image.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Image.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2ProductCode.h"
#import "UAEC2StateReason.h"
#import "UAEC2BlockDeviceMapping.h"
#import "UAEC2Tag.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2Image

@synthesize imageID=_imageID, imageLocation=_imageLocation, state=_state, ownerID=_ownerID, isPublic=_isPublic, productCodes=_productCodes, architecture=_architecture, imageType=_imageType, kernelID=_kernelID, ramdiskID=_ramdiskID, platform=_platform, sriovNetSupport=_sriovNetSupport, stateReason=_stateReason, imageOwnerAlias=_imageOwnerAlias, name=_name, descriptionValue=_descriptionValue, rootDeviceType=_rootDeviceType, rootDeviceName=_rootDeviceName, blockDeviceMappings=_blockDeviceMappings, virtualizationType=_virtualizationType, tags=_tags, hypervisor=_hypervisor;

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
        @"imageLocation": @"ec2:imageLocation",
        @"state": @"ec2:imageState",
        @"ownerID": @"ec2:imageOwnerId",
        @"isPublic": @"ec2:isPublic",
        @"productCodes": @"ec2:productCodes/ec2:item",
        @"architecture": @"ec2:architecture",
        @"imageType": @"ec2:imageType",
        @"kernelID": @"ec2:kernelId",
        @"ramdiskID": @"ec2:ramdiskId",
        @"platform": @"ec2:platform",
        @"sriovNetSupport": @"ec2:sriovNetSupport",
        @"stateReason": @"ec2:stateReason",
        @"imageOwnerAlias": @"ec2:imageOwnerAlias",
        @"name": @"ec2:name",
        @"descriptionValue": @"ec2:description",
        @"rootDeviceType": @"ec2:rootDeviceType",
        @"rootDeviceName": @"ec2:rootDeviceName",
        @"blockDeviceMappings": @"ec2:blockDeviceMapping/ec2:item",
        @"virtualizationType": @"ec2:virtualizationType",
        @"tags": @"ec2:tagSet/ec2:item",
        @"hypervisor": @"ec2:hypervisor"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)stateQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2ImageStateAvailable), @(UAEC2ImageStatePending), @(UAEC2ImageStateFailed) ]
                                               stringValues:@[ @"available", @"pending", @"failed" ]
                                               unknownValue:@(UAEC2ImageStateUnknown)];
}

+ (NSValueTransformer *)productCodesQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2ProductCode class]];
}

+ (NSValueTransformer *)architectureQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2ArchitectureI386), @(UAEC2ArchitectureX86_64) ]
                                               stringValues:@[ @"i386", @"x86_64" ]
                                               unknownValue:@(UAEC2ArchitectureUnknown)];
}

+ (NSValueTransformer *)imageTypeQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2ImageTypeMachine), @(UAEC2ImageTypeKernel), @(UAEC2ImageTypeRamkdisk) ]
                                               stringValues:@[ @"machine", @"kernel", @"ramkdisk" ]
                                               unknownValue:@(UAEC2ImageTypeUnknown)];
}

+ (NSValueTransformer *)sriovNetSupportQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2ImageSriovNetSupportSimple) ]
                                               stringValues:@[ @"simple" ]
                                               unknownValue:@(UAEC2ImageSriovNetSupportUnknown)];
}

+ (NSValueTransformer *)stateReasonQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UAEC2StateReason class]];
}

+ (NSValueTransformer *)rootDeviceTypeQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2RootDeviceTypeEBS), @(UAEC2RootDeviceTypeInstanceStore) ]
                                               stringValues:@[ @"ebs", @"instance-store" ]
                                               unknownValue:@(UAEC2RootDeviceTypeUnknown)];
}

+ (NSValueTransformer *)blockDeviceMappingsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2BlockDeviceMapping class]];
}

+ (NSValueTransformer *)virtualizationTypeQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2VirtualizationTypeParavirtual), @(UAEC2VirtualizationTypeHvm) ]
                                               stringValues:@[ @"paravirtual", @"hvm" ]
                                               unknownValue:@(UAEC2VirtualizationTypeUnknown)];
}

+ (NSValueTransformer *)tagsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2Tag class]];
}

+ (NSValueTransformer *)hypervisorQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2HypervisorOvm), @(UAEC2HypervisorXen) ]
                                               stringValues:@[ @"ovm", @"xen" ]
                                               unknownValue:@(UAEC2HypervisorUnknown)];
}

+ (NSValueTransformer *)stateXMLTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2ImageStateAvailable), @(UAEC2ImageStatePending), @(UAEC2ImageStateFailed) ]
                                               stringValues:@[ @"available", @"pending", @"failed" ]
                                               unknownValue:@(UAEC2ImageStateUnknown)];
}

+ (NSValueTransformer *)isPublicXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

+ (NSValueTransformer *)productCodesXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2ProductCode class]];
}

+ (NSValueTransformer *)architectureXMLTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2ArchitectureI386), @(UAEC2ArchitectureX86_64) ]
                                               stringValues:@[ @"i386", @"x86_64" ]
                                               unknownValue:@(UAEC2ArchitectureUnknown)];
}

+ (NSValueTransformer *)imageTypeXMLTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2ImageTypeMachine), @(UAEC2ImageTypeKernel), @(UAEC2ImageTypeRamkdisk) ]
                                               stringValues:@[ @"machine", @"kernel", @"ramkdisk" ]
                                               unknownValue:@(UAEC2ImageTypeUnknown)];
}

+ (NSValueTransformer *)sriovNetSupportXMLTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2ImageSriovNetSupportSimple) ]
                                               stringValues:@[ @"simple" ]
                                               unknownValue:@(UAEC2ImageSriovNetSupportUnknown)];
}

+ (NSValueTransformer *)stateReasonXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UAEC2StateReason class]];
}

+ (NSValueTransformer *)rootDeviceTypeXMLTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2RootDeviceTypeEBS), @(UAEC2RootDeviceTypeInstanceStore) ]
                                               stringValues:@[ @"ebs", @"instance-store" ]
                                               unknownValue:@(UAEC2RootDeviceTypeUnknown)];
}

+ (NSValueTransformer *)blockDeviceMappingsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2BlockDeviceMapping class]];
}

+ (NSValueTransformer *)virtualizationTypeXMLTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2VirtualizationTypeParavirtual), @(UAEC2VirtualizationTypeHvm) ]
                                               stringValues:@[ @"paravirtual", @"hvm" ]
                                               unknownValue:@(UAEC2VirtualizationTypeUnknown)];
}

+ (NSValueTransformer *)tagsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2Tag class]];
}

+ (NSValueTransformer *)hypervisorXMLTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2HypervisorOvm), @(UAEC2HypervisorXen) ]
                                               stringValues:@[ @"ovm", @"xen" ]
                                               unknownValue:@(UAEC2HypervisorUnknown)];
}

@end

#pragma clang diagnostic pop