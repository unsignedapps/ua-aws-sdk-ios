//
//  UAEC2ImportInstanceVolumeDetailItem.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@class UAEC2DiskImageDescription, UAEC2DiskImageVolume;

@interface UAEC2ImportInstanceVolumeDetailItem : UAEC2Model

@property (nonatomic, strong) NSNumber *bytesConverted;
@property (nonatomic, copy) NSString *availabilityZone;
@property (nonatomic, copy) UAEC2DiskImageDescription *image;
@property (nonatomic, copy) UAEC2DiskImageVolume *volume;
@property (nonatomic, copy) NSString *status;
@property (nonatomic, copy) NSString *statusMessage;
@property (nonatomic, copy) NSString *descriptionValue;

@end
