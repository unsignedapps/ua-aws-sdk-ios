//
//  UAASEBSBlockDevice.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAASEBSBlockDevice.h"

@implementation UAASEBSBlockDevice

@synthesize snapshotID=_snapshotID, volumeSize=_volumeSize, volumeType=_volumeType, deleteOnTermination=_deleteOnTermination, iops=_iops;

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAASModel queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"snapshotID": @"SnapshotId",
        @"volumeSize": @"VolumeSize",
        @"volumeType": @"VolumeType",
        @"deleteOnTermination": @"DeleteOnTermination",
        @"iops": @"Iops"
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
    NSMutableDictionary *keyPaths = [[UAASModel XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"snapshotID": @"AutoScaling:SnapshotId",
        @"volumeSize": @"AutoScaling:VolumeSize",
        @"volumeType": @"AutoScaling:VolumeType",
        @"deleteOnTermination": @"AutoScaling:DeleteOnTermination",
        @"iops": @"AutoScaling:Iops"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)volumeTypeQueryStringTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value)
    {
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"standard"])
		    return @(UAASEBSBlockDeviceVolumeTypeStandard);
		if ([value isEqualToString:@"io1"])
		    return @(UAASEBSBlockDeviceVolumeTypeIo1);

		return @(UAASEBSBlockDeviceVolumeTypeUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAASEBSBlockDeviceVolumeType castValue = (UAASEBSBlockDeviceVolumeType)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAASEBSBlockDeviceVolumeTypeStandard:
			    return @"standard";
			case UAASEBSBlockDeviceVolumeTypeIo1:
			    return @"io1";

			case UAASEBSBlockDeviceVolumeTypeUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)volumeSizeXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)volumeTypeXMLTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSArray *nodes)
    {
		if (nodes == nil || [nodes count] == 0)
			return @(UAASEBSBlockDeviceVolumeTypeUnknown);

		NSString *value = [((DDXMLElement *)nodes.firstObject) stringValue];
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"standard"])
		    return @(UAASEBSBlockDeviceVolumeTypeStandard);
		if ([value isEqualToString:@"io1"])
		    return @(UAASEBSBlockDeviceVolumeTypeIo1);

		return @(UAASEBSBlockDeviceVolumeTypeUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAASEBSBlockDeviceVolumeType castValue = (UAASEBSBlockDeviceVolumeType)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAASEBSBlockDeviceVolumeTypeStandard:
			    return @"standard";
			case UAASEBSBlockDeviceVolumeTypeIo1:
			    return @"io1";

			case UAASEBSBlockDeviceVolumeTypeUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)iopsXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

@end
