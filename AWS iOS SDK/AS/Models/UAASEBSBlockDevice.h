//
//  UAASEBSBlockDevice.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAASModel.h"
#import "UAAWSEBSBlockDevice.h"

@interface UAASEBSBlockDevice : UAASModel <UAAWSEBSBlockDevice>

@property (nonatomic, copy) NSString *snapshotID;
@property (nonatomic, strong) NSNumber *volumeSize;
@property (nonatomic) UAASEBSBlockDeviceVolumeType volumeType;
@property (nonatomic) BOOL deleteOnTermination;
@property (nonatomic) BOOL encrypted;
@property (nonatomic, strong) NSNumber *iops;

@end
