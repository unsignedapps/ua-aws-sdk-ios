//
//  UAEC2CreateSnapshotResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2CreateSnapshotResponse.h"
#import "UAEC2Tag.h"

@implementation UAEC2CreateSnapshotResponse

@synthesize snapshotID=_snapshotID, volumeID=_volumeID, state=_state, startTime=_startTime, progress=_progress, ownerID=_ownerID, descriptionValue=_descriptionValue, volumeSize=_volumeSize, ownerAlias=_ownerAlias, tags=_tags;

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
        @"tags": @"ec2:tagSet/ec2:item"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)startTimeXMLTransformer
{
    return [NSValueTransformer mtl_XMLTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)volumeSizeXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)tagsXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAEC2Tag class]];
}

@end
