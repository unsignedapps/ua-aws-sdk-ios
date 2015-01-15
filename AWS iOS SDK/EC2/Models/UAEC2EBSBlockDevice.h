//
//  UAEC2EBSBlockDevice.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"
#import "UAAWSEBSBlockDevice.h"

@interface UAEC2EBSBlockDevice : UAEC2Model <UAAWSEBSBlockDevice>

@property (nonatomic, copy) NSString *snapshotID;
@property (nonatomic, strong) NSNumber *volumeSize;
@property (nonatomic) BOOL deleteOnTermination;
@property (nonatomic) UAEC2VolumeType volumeType;
@property (nonatomic, strong) NSNumber *iops;
@property (nonatomic) BOOL encrypted;

@end
