//
//  UAEC2DiskImageDescription.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@interface UAEC2DiskImageDescription : UAEC2Model

@property (nonatomic, copy) NSString *format;
@property (nonatomic, strong) NSNumber *size;
@property (nonatomic, copy) NSString *importManifestUrl;
@property (nonatomic, copy) NSString *checksum;

@end
