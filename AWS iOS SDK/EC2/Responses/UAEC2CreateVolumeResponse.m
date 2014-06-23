//
//  UAEC2CreateVolumeResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2CreateVolumeResponse.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2CreateVolumeResponse

@synthesize volumeID=_volumeID, size=_size, snapshotID=_snapshotID, availabilityZone=_availabilityZone, state=_state, createTime=_createTime, volumeType=_volumeType, iops=_iops, encrypted=_encrypted;

+ (NSString *)XPathPrefix
{
    return @"./ec2:CreateVolumeResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"volumeID": @"ec2:volumeId",
        @"size": @"ec2:size",
        @"snapshotID": @"ec2:snapshotId",
        @"availabilityZone": @"ec2:availabilityZone",
        @"state": @"ec2:status",
        @"createTime": @"ec2:createTime",
        @"volumeType": @"ec2:volumeType",
        @"iops": @"ec2:iops",
        @"encrypted": @"ec2:encrypted"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)sizeXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)stateXMLTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2VolumeStateCreating), @(UAEC2VolumeStateAvailable), @(UAEC2VolumeStateInUse), @(UAEC2VolumeStateDeleting), @(UAEC2VolumeStateDeleted), @(UAEC2VolumeStateError) ]
                                               stringValues:@[ @"creating", @"available", @"in-use", @"deleting", @"deleted", @"error" ]
                                               unknownValue:@(UAEC2VolumeStateUnknown)];
}

+ (NSValueTransformer *)createTimeXMLTransformer
{
    return [NSValueTransformer UAMTL_XMLTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)iopsXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)encryptedXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

@end

#pragma clang diagnostic pop