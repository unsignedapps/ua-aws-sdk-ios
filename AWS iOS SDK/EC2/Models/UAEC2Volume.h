//
//  UAEC2Volume.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@class UAEC2VolumeAttachment, UAEC2Tag;

@interface UAEC2Volume : UAEC2Model

@property (nonatomic, copy) NSString *volumeID;
@property (nonatomic, strong) NSNumber *size;
@property (nonatomic, copy) NSString *snapshotID;
@property (nonatomic, copy) NSString *availabilityZone;
@property (nonatomic) UAEC2VolumeState state;
@property (nonatomic, copy) NSDate *createTime;
@property (nonatomic, copy) NSArray *attachments;
@property (nonatomic, copy) NSArray *tags;
@property (nonatomic) UAEC2VolumeType volumeType;
@property (nonatomic, strong) NSNumber *iops;

@end
