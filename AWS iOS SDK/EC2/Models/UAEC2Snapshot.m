//
//  UAEC2Snapshot.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Snapshot.h"
#import "UAEC2Tag.h"

@implementation UAEC2Snapshot

@synthesize snapshotID=_snapshotID, volumeID=_volumeID, state=_state, startTime=_startTime, progress=_progress, ownerID=_ownerID, descriptionValue=_descriptionValue, volumeSize=_volumeSize, ownerAlias=_ownerAlias, tags=_tags;

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

- (UAEC2Tag *)tagAtIndex:(NSUInteger)index
{
    if (self.tags == nil || index >= ([self.tags count]-1))
        return nil;

    return [self.tags objectAtIndex:index];
}

+ (NSValueTransformer *)stateQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2SnapshotStatePending), @(UAEC2SnapshotStateCompleted), @(UAEC2SnapshotStateError) ]
                                               stringValues:@[ @"pending", @"completed", @"error" ]
                                               unknownValue:@(UAEC2SnapshotStateUnknown)];
}

+ (NSValueTransformer *)startTimeQueryStringTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)tagsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2Tag class]];
}

+ (NSValueTransformer *)stateXMLTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2SnapshotStatePending), @(UAEC2SnapshotStateCompleted), @(UAEC2SnapshotStateError) ]
                                               stringValues:@[ @"pending", @"completed", @"error" ]
                                               unknownValue:@(UAEC2SnapshotStateUnknown)];
}

+ (NSValueTransformer *)startTimeXMLTransformer
{
    return [NSValueTransformer UAMTL_XMLTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)volumeSizeXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)tagsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2Tag class]];
}

@end
