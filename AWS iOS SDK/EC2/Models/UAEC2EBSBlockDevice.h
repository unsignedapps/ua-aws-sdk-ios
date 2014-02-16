//
//  UAEC2EBSBlockDevice.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@interface UAEC2EBSBlockDevice : UAEC2Model

@property (nonatomic, copy) NSString *snapshotID;
@property (nonatomic, strong) NSNumber *volumeSize;
@property (nonatomic) BOOL deleteOnTermination;
@property (nonatomic) UAEC2VolumeType volumeType;
@property (nonatomic, strong) NSNumber *iops;

@end
