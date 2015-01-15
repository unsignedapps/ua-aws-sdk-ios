//
//  UAASEBSBlockDevice.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAASEBSBlockDevice.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAASEBSBlockDevice

@synthesize snapshotID=_snapshotID, volumeSize=_volumeSize, volumeType=_volumeType, deleteOnTermination=_deleteOnTermination, encrypted=_encrypted, iops=_iops;

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
        @"encrypted": @"Encrypted",
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
        @"encrypted": @"AutoScaling:Encrypted",
        @"iops": @"AutoScaling:Iops"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)volumeTypeQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAASEBSBlockDeviceVolumeTypeGP2), @(UAASEBSBlockDeviceVolumeTypeStandard), @(UAASEBSBlockDeviceVolumeTypeIO1) ]
                                               stringValues:@[ @"gp2", @"standard", @"io1" ]
                                               unknownValue:@(UAASEBSBlockDeviceVolumeTypeUnknown)];
}

+ (NSValueTransformer *)volumeSizeXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)volumeTypeXMLTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAASEBSBlockDeviceVolumeTypeGP2), @(UAASEBSBlockDeviceVolumeTypeStandard), @(UAASEBSBlockDeviceVolumeTypeIO1) ]
                                               stringValues:@[ @"gp2", @"standard", @"io1" ]
                                               unknownValue:@(UAASEBSBlockDeviceVolumeTypeUnknown)];
}

+ (NSValueTransformer *)deleteOnTerminationXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

+ (NSValueTransformer *)encryptedXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

+ (NSValueTransformer *)iopsXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

@end

#pragma clang diagnostic pop