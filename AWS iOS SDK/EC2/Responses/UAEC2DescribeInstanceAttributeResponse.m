//
//  UAEC2DescribeInstanceAttributeResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribeInstanceAttributeResponse.h"
#import "UAEC2InstanceBlockDeviceMapping.h"
#import "UAEC2ProductCode.h"

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

+ (NSValueTransformer *)instanceInitiatedShutdownBehaviorXMLTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSArray *nodes)
    {
		if (nodes == nil || [nodes count] == 0)
			return @(UAEC2InstanceInitiatedShutdownBehaviourUnknown);

		NSString *value = [((DDXMLElement *)nodes.firstObject) stringValue];
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"stop"])
		    return @(UAEC2InstanceInitiatedShutdownBehaviourStop);
		if ([value isEqualToString:@"terminate"])
		    return @(UAEC2InstanceInitiatedShutdownBehaviourTerminate);

		return @(UAEC2InstanceInitiatedShutdownBehaviourUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAEC2InstanceInitiatedShutdownBehaviour castValue = (UAEC2InstanceInitiatedShutdownBehaviour)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAEC2InstanceInitiatedShutdownBehaviourStop:
			    return @"stop";
			case UAEC2InstanceInitiatedShutdownBehaviourTerminate:
			    return @"terminate";

			case UAEC2InstanceInitiatedShutdownBehaviourUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)blockDeviceMappingsXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAEC2InstanceBlockDeviceMapping class]];
}

+ (NSValueTransformer *)productCodesXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAEC2ProductCode class]];
}

@end
