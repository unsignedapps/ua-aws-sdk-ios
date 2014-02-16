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

@property (nonatomic, copy) NSString *status;
@property (nonatomic, copy) NSArray *details;

@end
