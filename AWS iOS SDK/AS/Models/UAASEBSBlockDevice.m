//
//  UAASEBSBlockDevice.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASEBSBlockDevice.h"

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

- (void)setVolumeType:(UAASEBSBlockDeviceVolumeType)volumeType
{
	_volumeType = volumeType;
	
	if (![self.UA_dirtyProperties containsObject:@"volumeType"])
		[self.UA_dirtyProperties addObject:@"volumeType"];
}

- (void)setDeleteOnTermination:(BOOL)deleteOnTermination
{
	_deleteOnTermination = deleteOnTermination;
	
	if (![self.UA_dirtyProperties containsObject:@"deleteOnTermination"])
		[self.UA_dirtyProperties addObject:@"deleteOnTermination"];
}

- (void)setIops:(NSNumber *)iops
{
	_iops = iops;
	
	if (![self.UA_dirtyProperties containsObject:@"iops"])
		[self.UA_dirtyProperties addObject:@"iops"];
}

+ (NSValueTransformer *)volumeTypeQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAASEBSBlockDeviceVolumeTypeStandard), @(UAASEBSBlockDeviceVolumeTypeIo1) ]
                                               stringValues:@[ @"standard", @"io1" ]
                                               unknownValue:@(UAASEBSBlockDeviceVolumeTypeUnknown)];
}

+ (NSValueTransformer *)volumeSizeXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)volumeTypeXMLTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAASEBSBlockDeviceVolumeTypeStandard), @(UAASEBSBlockDeviceVolumeTypeIo1) ]
                                               stringValues:@[ @"standard", @"io1" ]
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
