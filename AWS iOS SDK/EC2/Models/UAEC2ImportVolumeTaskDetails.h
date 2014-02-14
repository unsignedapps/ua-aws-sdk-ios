//
//  UAEC2ImportVolumeTaskDetails.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@class UAEC2DiskImageDescription, UAEC2DiskImageVolumeDescription;

@interface UAEC2ImportVolumeTaskDetails : UAEC2Model

@property (nonatomic, strong) NSNumber *bytesConverted;
@property (nonatomic, copy) NSString *availabilityZone;
@property (nonatomic, copy) NSString *descriptionValue;
@property (nonatomic, copy) UAEC2DiskImageDescription *image;
@property (nonatomic, copy) UAEC2DiskImageVolumeDescription *volume;

@end
