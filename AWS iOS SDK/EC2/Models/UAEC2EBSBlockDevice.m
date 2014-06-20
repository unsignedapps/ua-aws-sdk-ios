//
//  UAEC2EBSBlockDevice.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2EBSBlockDevice.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2EBSBlockDevice

@synthesize snapshotID=_snapshotID, volumeSize=_volumeSize, deleteOnTermination=_deleteOnTermination, volumeType=_volumeType, iops=_iops;

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Model queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"snapshotID": @"SnapshotId",
        @"volumeSize": @"VolumeSize",
        @"deleteOnTermination": @"DeleteOnTermination",
        @"volumeType": @"VolumeType",
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
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2VolumeTypeStandard), @(UAEC2VolumeTypeIo1) ]
                                               stringValues:@[ @"standard", @"io1" ]
                                               unknownValue:@(UAEC2VolumeTypeUnknown)];
}

+ (NSValueTransformer *)volumeSizeXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)deleteOnTerminationXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

+ (NSValueTransformer *)volumeTypeXMLTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2VolumeTypeStandard), @(UAEC2VolumeTypeIo1) ]
                                               stringValues:@[ @"standard", @"io1" ]
                                               unknownValue:@(UAEC2VolumeTypeUnknown)];
}

+ (NSValueTransformer *)iopsXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

@end

#pragma clang diagnostic pop