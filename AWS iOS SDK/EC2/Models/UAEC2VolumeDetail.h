//
//  UAEC2VolumeDetail.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@interface UAEC2VolumeDetail : UAEC2Model

@property (nonatomic, strong) NSNumber *size;

- (id)initWithSize:(NSNumber *)size;

@end
