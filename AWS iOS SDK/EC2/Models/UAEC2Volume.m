//
//  UAEC2Volume.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Volume.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2VolumeAttachment.h"
#import "UAEC2Tag.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2Volume

@synthesize volumeID=_volumeID, size=_size, snapshotID=_snapshotID, availabilityZone=_availabilityZone, state=_state, createTime=_createTime, attachments=_attachments, tags=_tags, volumeType=_volumeType, iops=_iops;

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
        @"volumeID": @"ec2:volumeId",
        @"size": @"ec2:size",
        @"snapshotID": @"ec2:snapshotId",
        @"availabilityZone": @"ec2:availabilityZone",
        @"state": @"ec2:status",
        @"createTime": @"ec2:createTime",
        @"attachments": @"ec2:attachmentSet/ec2:item",
        @"tags": @"ec2:tagSet/ec2:item",
        @"volumeType": @"ec2:volumeType",
        @"iops": @"ec2:iops"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)stateQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2VolumeStateCreating), @(UAEC2VolumeStateAvailable), @(UAEC2VolumeStateInUse), @(UAEC2VolumeStateDeleting), @(UAEC2VolumeStateDeleted), @(UAEC2VolumeStateError) ]
                                               stringValues:@[ @"creating", @"available", @"in-use", @"deleting", @"deleted", @"error" ]
                                               unknownValue:@(UAEC2VolumeStateUnknown)];
}

+ (NSValueTransformer *)createTimeQueryStringTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)attachmentsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2VolumeAttachment class]];
}

+ (NSValueTransformer *)tagsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2Tag class]];
}

+ (NSValueTransformer *)volumeTypeQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2VolumeTypeStandard), @(UAEC2VolumeTypeIo1) ]
                                               stringValues:@[ @"standard", @"io1" ]
                                               unknownValue:@(UAEC2VolumeTypeUnknown)];
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

+ (NSValueTransformer *)attachmentsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2VolumeAttachment class]];
}

+ (NSValueTransformer *)tagsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2Tag class]];
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