//
//  UAEC2DescribeInstanceAttributeResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribeInstanceAttributeResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2InstanceBlockDeviceMapping.h"
#import "UAEC2ProductCode.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2DescribeInstanceAttributeResponse

@synthesize instanceID=_instanceID, instanceType=_instanceType, kernelID=_kernelID, ramdiskID=_ramdiskID, userData=_userData, disableApiTermination=_disableApiTermination, instanceInitiatedShutdownBehavior=_instanceInitiatedShutdownBehavior, rootDeviceName=_rootDeviceName, blockDeviceMappings=_blockDeviceMappings, productCodes=_productCodes, ebsOptimized=_ebsOptimized, sriovNetSupport=_sriovNetSupport;

+ (NSString *)XPathPrefix
{
    return @"./ec2:DescribeInstanceAttributeResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"instanceID": @"ec2:instanceId",
        @"instanceType": @"ec2:instanceType/ec2:value",
        @"kernelID": @"ec2:kernel/ec2:value",
        @"ramdiskID": @"ec2:ramdisk/ec2:value",
        @"userData": @"ec2:userData/ec2:value",
        @"decodedUserData": [NSNull null],
        @"disableApiTermination": @"ec2:disableApiTermination/ec2:value",
        @"instanceInitiatedShutdownBehavior": @"ec2:instanceInitiatedShutdownBehavior/ec2:value",
        @"rootDeviceName": @"ec2:rootDeviceName/ec2:value",
        @"blockDeviceMappings": @"ec2:blockDeviceMapping/ec2:item",
        @"productCodes": @"ec2:productCodes/ec2:item",
        @"ebsOptimized": @"ec2:ebsOptimized/ec2:value",
        @"sriovNetSupport": @"ec2:sriovNetSupport/ec2:value"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)disableApiTerminationXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

+ (NSValueTransformer *)instanceInitiatedShutdownBehaviorXMLTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2InstanceInitiatedShutdownBehaviorStop), @(UAEC2InstanceInitiatedShutdownBehaviorTerminate) ]
                                               stringValues:@[ @"stop", @"terminate" ]
                                               unknownValue:@(UAEC2InstanceInitiatedShutdownBehaviorUnknown)];
}

+ (NSValueTransformer *)blockDeviceMappingsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2InstanceBlockDeviceMapping class]];
}

+ (NSValueTransformer *)productCodesXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2ProductCode class]];
}

+ (NSValueTransformer *)ebsOptimizedXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

@end

#pragma clang diagnostic pop