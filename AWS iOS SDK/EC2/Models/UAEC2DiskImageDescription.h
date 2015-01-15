//
//  UAEC2DiskImageDescription.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@interface UAEC2DiskImageDescription : UAEC2Model

@property (nonatomic, copy) NSString *format;
@property (nonatomic, strong) NSNumber *size;
@property (nonatomic, copy) NSString *importManifestURL;
@property (nonatomic, copy) NSString *checksum;

@end
