//
//  UAEC2DiskImage.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@class UAEC2DiskImageDetail, UAEC2VolumeDetail;

@interface UAEC2DiskImage : UAEC2Model

@property (nonatomic, copy) UAEC2DiskImageDetail *image;
@property (nonatomic, copy) NSString *descriptionValue;
@property (nonatomic, copy) UAEC2VolumeDetail *volume;

@end
