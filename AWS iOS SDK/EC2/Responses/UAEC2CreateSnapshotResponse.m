//
//  UAEC2CreateSnapshotResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2CreateSnapshotResponse.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2CreateSnapshotResponse

@synthesize snapshotID=_snapshotID, volumeID=_volumeID, state=_state, startTime=_startTime, progress=_progress, ownerID=_ownerID, descriptionValue=_descriptionValue, volumeSize=_volumeSize, ownerAlias=_ownerAlias, encrypted=_encrypted, kmsKeyID=_kmsKeyID;

+ (NSString *)XPathPrefix
{
    return @"./ec2:CreateSnapshotResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"snapshotID": @"ec2:snapshotId",
        @"volumeID": @"ec2:volumeId",
        @"state": @"ec2:status",
        @"startTime": @"ec2:startTime",
        @"progress": @"ec2:progress",
        @"ownerID": @"ec2:ownerId",
        @"descriptionValue": @"ec2:description",
        @"volumeSize": @"ec2:volumeSize",
        @"ownerAlias": @"ec2:ownerAlias",
        @"encrypted": @"ec2:encrypted",
        @"kmsKeyID": @"ec2:kmsKeyId"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)startTimeXMLTransformer
{
    return [NSValueTransformer UAMTL_XMLTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)volumeSizeXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)encryptedXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

@end

#pragma clang diagnostic pop