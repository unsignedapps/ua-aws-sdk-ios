//
//  UAASEBSBlockDevice.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASEBSBlockDevice.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

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
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAASEBSBlockDeviceVolumeTypeStandard), @(UAASEBSBlockDeviceVolumeTypeIO1), @(UAASEBSBlockDeviceVolumeTypeGP2) ]
                                               stringValues:@[ @"standard", @"io1", @"gp2" ]
                                               unknownValue:@(UAASEBSBlockDeviceVolumeTypeUnknown)];
}

+ (NSValueTransformer *)volumeSizeXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)volumeTypeXMLTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAASEBSBlockDeviceVolumeTypeStandard), @(UAASEBSBlockDeviceVolumeTypeIO1), @(UAASEBSBlockDeviceVolumeTypeGP2) ]
                                               stringValues:@[ @"standard", @"io1", @"gp2" ]
                                               unknownValue:@(UAASEBSBlockDeviceVolumeTypeUnknown)];
}

+ (NSValueTransformer *)deleteOnTerminationXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

+ (NSValueTransformer *)iopsXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

@end

#pragma clang diagnostic pop