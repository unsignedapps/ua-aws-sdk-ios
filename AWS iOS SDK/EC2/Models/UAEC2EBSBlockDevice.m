//
//  UAEC2EBSBlockDevice.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2EBSBlockDevice.h"

@implementation UAEC2EBSBlockDevice

@synthesize snapshotID=_snapshotID, volumeSize=_volumeSize, deleteOnTermination=_deleteOnTermination, volumeType=_volumeType, iops=_iops;

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Model queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"snapshotID": @"snapshotId",
        @"volumeSize": @"volumeSize",
        @"deleteOnTermination": @"deleteOnTermination",
        @"volumeType": @"volumeType",
        @"iops": @"iops"
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
        @"snapshotID": @"ec2:snapshotId",
        @"volumeSize": @"ec2:volumeSize",
        @"deleteOnTermination": @"ec2:deleteOnTermination",
        @"volumeType": @"ec2:volumeType",
        @"iops": @"ec2:iops"
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
		    return @(UAEC2VolumeTypeStandard);
		if ([value isEqualToString:@"io1"])
		    return @(UAEC2VolumeTypeIo1);

		return @(UAEC2VolumeTypeUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAEC2VolumeType castValue = (UAEC2VolumeType)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAEC2VolumeTypeStandard:
			    return @"standard";
			case UAEC2VolumeTypeIo1:
			    return @"io1";

			case UAEC2VolumeTypeUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)volumeSizeXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)deleteOnTerminationXMLTransformer
{
    return [MTLValueTransformer UA_XMLTransformerForBooleanString];
}

+ (NSValueTransformer *)volumeTypeXMLTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSArray *nodes)
    {
		if (nodes == nil || [nodes count] == 0)
			return @(UAEC2VolumeTypeUnknown);

		NSString *value = [((DDXMLElement *)nodes.firstObject) stringValue];
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"standard"])
		    return @(UAEC2VolumeTypeStandard);
		if ([value isEqualToString:@"io1"])
		    return @(UAEC2VolumeTypeIo1);

		return @(UAEC2VolumeTypeUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAEC2VolumeType castValue = (UAEC2VolumeType)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAEC2VolumeTypeStandard:
			    return @"standard";
			case UAEC2VolumeTypeIo1:
			    return @"io1";

			case UAEC2VolumeTypeUnknown:
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
