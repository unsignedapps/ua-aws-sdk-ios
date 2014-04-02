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

- (void)setSnapshotID:(NSString *)snapshotID
{
	_snapshotID = snapshotID;
	
	if (![self.UA_dirtyProperties containsObject:@"snapshotID"])
		[self.UA_dirtyProperties addObject:@"snapshotID"];
}

- (void)setVolumeSize:(NSNumber *)volumeSize
{
	_volumeSize = volumeSize;
	
	if (![self.UA_dirtyProperties containsObject:@"volumeSize"])
		[self.UA_dirtyProperties addObject:@"volumeSize"];
}

- (void)setDeleteOnTermination:(BOOL)deleteOnTermination
{
	_deleteOnTermination = deleteOnTermination;
	
	if (![self.UA_dirtyProperties containsObject:@"deleteOnTermination"])
		[self.UA_dirtyProperties addObject:@"deleteOnTermination"];
}

- (void)setVolumeType:(UAEC2VolumeType)volumeType
{
	_volumeType = volumeType;
	
	if (![self.UA_dirtyProperties containsObject:@"volumeType"])
		[self.UA_dirtyProperties addObject:@"volumeType"];
}

- (void)setIops:(NSNumber *)iops
{
	_iops = iops;
	
	if (![self.UA_dirtyProperties containsObject:@"iops"])
		[self.UA_dirtyProperties addObject:@"iops"];
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
