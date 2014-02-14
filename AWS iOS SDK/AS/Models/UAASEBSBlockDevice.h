//
//  UAASEBSBlockDevice.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAASModel.h"

@interface UAASEBSBlockDevice : UAASModel

@property (nonatomic, copy) NSString *snapshotID;
@property (nonatomic, strong) NSNumber *volumeSize;
@property (nonatomic) UAASEBSBlockDeviceVolumeType volumeType;
@property (nonatomic) BOOL deleteOnTermination;
@property (nonatomic, strong) NSNumber *iops;

@end
