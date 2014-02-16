//
//  UAEC2Image.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Image.h"
#import "UAEC2ProductCode.h"
#import "UAEC2StateReason.h"
#import "UAEC2BlockDeviceMapping.h"
#import "UAEC2Tag.h"

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
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value)
    {
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"available"])
		    return @(UAEC2ImageStateAvailable);
		if ([value isEqualToString:@"pending"])
		    return @(UAEC2ImageStatePending);
		if ([value isEqualToString:@"failed"])
		    return @(UAEC2ImageStateFailed);

		return @(UAEC2ImageStateUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAEC2ImageState castValue = (UAEC2ImageState)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAEC2ImageStateAvailable:
			    return @"available";
			case UAEC2ImageStatePending:
			    return @"pending";
			case UAEC2ImageStateFailed:
			    return @"failed";

			case UAEC2ImageStateUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)productCodesQueryStringTransformer
{
  return [NSValueTransformer mtl_QueryStringArrayTransformerWithModelClass:[UAEC2ProductCode class]];
}

+ (NSValueTransformer *)architectureQueryStringTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value)
    {
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"i386"])
		    return @(UAEC2ArchitectureI386);
		if ([value isEqualToString:@"x86_64"])
		    return @(UAEC2ArchitectureX86_64);

		return @(UAEC2ArchitectureUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAEC2Architecture castValue = (UAEC2Architecture)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAEC2ArchitectureI386:
			    return @"i386";
			case UAEC2ArchitectureX86_64:
			    return @"x86_64";

			case UAEC2ArchitectureUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)imageTypeQueryStringTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value)
    {
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"machine"])
		    return @(UAEC2ImageTypeMachine);
		if ([value isEqualToString:@"kernel"])
		    return @(UAEC2ImageTypeKernel);
		if ([value isEqualToString:@"ramkdisk"])
		    return @(UAEC2ImageTypeRamkdisk);

		return @(UAEC2ImageTypeUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAEC2ImageType castValue = (UAEC2ImageType)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAEC2ImageTypeMachine:
			    return @"machine";
			case UAEC2ImageTypeKernel:
			    return @"kernel";
			case UAEC2ImageTypeRamkdisk:
			    return @"ramkdisk";

			case UAEC2ImageTypeUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)sriovNetSupportQueryStringTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value)
    {
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"simple"])
		    return @(UAEC2ImageSriovNetSupportSimple);

		return @(UAEC2ImageSriovNetSupportUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAEC2ImageSriovNetSupport castValue = (UAEC2ImageSriovNetSupport)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAEC2ImageSriovNetSupportSimple:
			    return @"simple";

			case UAEC2ImageSriovNetSupportUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)stateReasonQueryStringTransformer
{
  return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[UAEC2StateReason class]];
}

+ (NSValueTransformer *)rootDeviceTypeQueryStringTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value)
    {
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"ebs"])
		    return @(UAEC2RootDeviceTypeEBS);
		if ([value isEqualToString:@"instance-store"])
		    return @(UAEC2RootDeviceTypeInstanceStore);

		return @(UAEC2RootDeviceTypeUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAEC2RootDeviceType castValue = (UAEC2RootDeviceType)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAEC2RootDeviceTypeEBS:
			    return @"ebs";
			case UAEC2RootDeviceTypeInstanceStore:
			    return @"instance-store";

			case UAEC2RootDeviceTypeUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)blockDeviceMappingsQueryStringTransformer
{
  return [NSValueTransformer mtl_QueryStringArrayTransformerWithModelClass:[UAEC2BlockDeviceMapping class]];
}

+ (NSValueTransformer *)virtualizationTypeQueryStringTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value)
    {
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"paravirtual"])
		    return @(UAEC2VirtualizationTypeParavirtual);
		if ([value isEqualToString:@"hvm"])
		    return @(UAEC2VirtualizationTypeHvm);

		return @(UAEC2VirtualizationTypeUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAEC2VirtualizationType castValue = (UAEC2VirtualizationType)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAEC2VirtualizationTypeParavirtual:
			    return @"paravirtual";
			case UAEC2VirtualizationTypeHvm:
			    return @"hvm";

			case UAEC2VirtualizationTypeUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)tagsQueryStringTransformer
{
  return [NSValueTransformer mtl_QueryStringArrayTransformerWithModelClass:[UAEC2Tag class]];
}

+ (NSValueTransformer *)hypervisorQueryStringTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value)
    {
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"ovm"])
		    return @(UAEC2HypervisorOvm);
		if ([value isEqualToString:@"xen"])
		    return @(UAEC2HypervisorXen);

		return @(UAEC2HypervisorUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAEC2Hypervisor castValue = (UAEC2Hypervisor)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAEC2HypervisorOvm:
			    return @"ovm";
			case UAEC2HypervisorXen:
			    return @"xen";

			case UAEC2HypervisorUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)stateXMLTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSArray *nodes)
    {
		if (nodes == nil || [nodes count] == 0)
			return @(UAEC2ImageStateUnknown);

		NSString *value = [((DDXMLElement *)nodes.firstObject) stringValue];
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"available"])
		    return @(UAEC2ImageStateAvailable);
		if ([value isEqualToString:@"pending"])
		    return @(UAEC2ImageStatePending);
		if ([value isEqualToString:@"failed"])
		    return @(UAEC2ImageStateFailed);

		return @(UAEC2ImageStateUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAEC2ImageState castValue = (UAEC2ImageState)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAEC2ImageStateAvailable:
			    return @"available";
			case UAEC2ImageStatePending:
			    return @"pending";
			case UAEC2ImageStateFailed:
			    return @"failed";

			case UAEC2ImageStateUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)isPublicXMLTransformer
{
    return [MTLValueTransformer UA_XMLTransformerForBooleanString];
}

+ (NSValueTransformer *)productCodesXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAEC2ProductCode class]];
}

+ (NSValueTransformer *)architectureXMLTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSArray *nodes)
    {
		if (nodes == nil || [nodes count] == 0)
			return @(UAEC2ArchitectureUnknown);

		NSString *value = [((DDXMLElement *)nodes.firstObject) stringValue];
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"i386"])
		    return @(UAEC2ArchitectureI386);
		if ([value isEqualToString:@"x86_64"])
		    return @(UAEC2ArchitectureX86_64);

		return @(UAEC2ArchitectureUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAEC2Architecture castValue = (UAEC2Architecture)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAEC2ArchitectureI386:
			    return @"i386";
			case UAEC2ArchitectureX86_64:
			    return @"x86_64";

			case UAEC2ArchitectureUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)imageTypeXMLTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSArray *nodes)
    {
		if (nodes == nil || [nodes count] == 0)
			return @(UAEC2ImageTypeUnknown);

		NSString *value = [((DDXMLElement *)nodes.firstObject) stringValue];
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"machine"])
		    return @(UAEC2ImageTypeMachine);
		if ([value isEqualToString:@"kernel"])
		    return @(UAEC2ImageTypeKernel);
		if ([value isEqualToString:@"ramkdisk"])
		    return @(UAEC2ImageTypeRamkdisk);

		return @(UAEC2ImageTypeUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAEC2ImageType castValue = (UAEC2ImageType)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAEC2ImageTypeMachine:
			    return @"machine";
			case UAEC2ImageTypeKernel:
			    return @"kernel";
			case UAEC2ImageTypeRamkdisk:
			    return @"ramkdisk";

			case UAEC2ImageTypeUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)sriovNetSupportXMLTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSArray *nodes)
    {
		if (nodes == nil || [nodes count] == 0)
			return @(UAEC2ImageSriovNetSupportUnknown);

		NSString *value = [((DDXMLElement *)nodes.firstObject) stringValue];
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"simple"])
		    return @(UAEC2ImageSriovNetSupportSimple);

		return @(UAEC2ImageSriovNetSupportUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAEC2ImageSriovNetSupport castValue = (UAEC2ImageSriovNetSupport)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAEC2ImageSriovNetSupportSimple:
			    return @"simple";

			case UAEC2ImageSriovNetSupportUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)stateReasonXMLTransformer
{
  return [NSValueTransformer mtl_XMLTransformerWithModelClass:[UAEC2StateReason class]];
}

+ (NSValueTransformer *)rootDeviceTypeXMLTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSArray *nodes)
    {
		if (nodes == nil || [nodes count] == 0)
			return @(UAEC2RootDeviceTypeUnknown);

		NSString *value = [((DDXMLElement *)nodes.firstObject) stringValue];
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"ebs"])
		    return @(UAEC2RootDeviceTypeEBS);
		if ([value isEqualToString:@"instance-store"])
		    return @(UAEC2RootDeviceTypeInstanceStore);

		return @(UAEC2RootDeviceTypeUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAEC2RootDeviceType castValue = (UAEC2RootDeviceType)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAEC2RootDeviceTypeEBS:
			    return @"ebs";
			case UAEC2RootDeviceTypeInstanceStore:
			    return @"instance-store";

			case UAEC2RootDeviceTypeUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)blockDeviceMappingsXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAEC2BlockDeviceMapping class]];
}

+ (NSValueTransformer *)virtualizationTypeXMLTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSArray *nodes)
    {
		if (nodes == nil || [nodes count] == 0)
			return @(UAEC2VirtualizationTypeUnknown);

		NSString *value = [((DDXMLElement *)nodes.firstObject) stringValue];
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"paravirtual"])
		    return @(UAEC2VirtualizationTypeParavirtual);
		if ([value isEqualToString:@"hvm"])
		    return @(UAEC2VirtualizationTypeHvm);

		return @(UAEC2VirtualizationTypeUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAEC2VirtualizationType castValue = (UAEC2VirtualizationType)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAEC2VirtualizationTypeParavirtual:
			    return @"paravirtual";
			case UAEC2VirtualizationTypeHvm:
			    return @"hvm";

			case UAEC2VirtualizationTypeUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)tagsXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAEC2Tag class]];
}

+ (NSValueTransformer *)hypervisorXMLTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSArray *nodes)
    {
		if (nodes == nil || [nodes count] == 0)
			return @(UAEC2HypervisorUnknown);

		NSString *value = [((DDXMLElement *)nodes.firstObject) stringValue];
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"ovm"])
		    return @(UAEC2HypervisorOvm);
		if ([value isEqualToString:@"xen"])
		    return @(UAEC2HypervisorXen);

		return @(UAEC2HypervisorUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAEC2Hypervisor castValue = (UAEC2Hypervisor)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAEC2HypervisorOvm:
			    return @"ovm";
			case UAEC2HypervisorXen:
			    return @"xen";

			case UAEC2HypervisorUnknown:
			default:
				return nil;
        }
    }];
}

@end
