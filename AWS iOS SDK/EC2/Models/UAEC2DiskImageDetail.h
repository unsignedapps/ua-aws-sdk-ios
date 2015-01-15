//
//  UAEC2DiskImageDetail.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@interface UAEC2DiskImageDetail : UAEC2Model

@property (nonatomic, copy) NSString *format;
@property (nonatomic, strong) NSNumber *bytes;
@property (nonatomic, copy) NSString *importManifestURL;

@end
