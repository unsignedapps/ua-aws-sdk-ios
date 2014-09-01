//
//  UAEC2VolumeStatusInfo.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@class UAEC2VolumeStatusDetail;

@interface UAEC2VolumeStatusInfo : UAEC2Model

@property (nonatomic) UAEC2VolumeStatusInfoStatus status;
@property (nonatomic, copy) NSArray *details;

/**
 * Retrieves the UAEC2VolumeStatusDetail at the specified index.
**/
- (UAEC2VolumeStatusDetail *)detailAtIndex:(NSUInteger)index;

/**
 * Adds a Detail to the details property.
 *
 * This will initialise details with an empty mutable array if necessary.
**/
- (void)addDetail:(UAEC2VolumeStatusDetail *)detail;

@end
