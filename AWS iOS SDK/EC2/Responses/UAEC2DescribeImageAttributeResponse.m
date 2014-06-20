//
//  UAEC2DescribeImageAttributeResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribeImageAttributeResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2LaunchPermission.h"
#import "UAEC2ProductCode.h"
#import "UAEC2KernelID.h"
#import "UAEC2RamdiskID.h"
#import "UAEC2SriovNetSupport.h"
#import "UAEC2BlockDeviceMapping.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2DescribeImageAttributeResponse

@synthesize imageID=_imageID, launchPermissions=_launchPermissions, productCodes=_productCodes, kernelID=_kernelID, ramdiskID=_ramdiskID, descriptionValue=_descriptionValue, sriovNetSupport=_sriovNetSupport, blockDeviceMappings=_blockDeviceMappings;

+ (NSString *)XPathPrefix
{
    return @"./ec2:DescribeImageAttributeResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"imageID": @"ec2:imageId",
        @"launchPermissions": @"ec2:launchPermission/ec2:item",
        @"productCodes": @"ec2:productCodes/ec2:item",
        @"kernelID": @"ec2:kernel",
        @"ramdiskID": @"ec2:ramdisk",
        @"descriptionValue": @"ec2:description/ec2:value",
        @"sriovNetSupport": @"ec2:sriovNetSupport",
        @"blockDeviceMappings": @"ec2:blockDeviceMapping/ec2:item"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)launchPermissionsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2LaunchPermission class]];
}

+ (NSValueTransformer *)productCodesXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2ProductCode class]];
}

+ (NSValueTransformer *)kernelIDXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UAEC2KernelID class]];
}

+ (NSValueTransformer *)ramdiskIDXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UAEC2RamdiskID class]];
}

+ (NSValueTransformer *)sriovNetSupportXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UAEC2SriovNetSupport class]];
}

+ (NSValueTransformer *)blockDeviceMappingsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2BlockDeviceMapping class]];
}

@end

#pragma clang diagnostic pop