//
//  UAEC2CreateVolumeResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@interface UAEC2CreateVolumeResponse : UAEC2Response

@property (nonatomic, copy) NSString *volumeID;
@property (nonatomic, strong) NSNumber *size;
@property (nonatomic, copy) NSString *snapshotID;
@property (nonatomic, copy) NSString *availabilityZone;
@property (nonatomic) UAEC2VolumeState state;
@property (nonatomic, copy) NSDate *createTime;
@property (nonatomic, copy) NSString *volumeType;
@property (nonatomic, strong) NSNumber *iops;
@property (nonatomic) BOOL encrypted;

@end
