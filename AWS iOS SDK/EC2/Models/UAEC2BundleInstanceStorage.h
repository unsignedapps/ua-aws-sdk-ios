//
//  UAEC2BundleInstanceStorage.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@class UAEC2BundleInstanceS3Storage;

@interface UAEC2BundleInstanceStorage : UAEC2Model

@property (nonatomic, copy) UAEC2BundleInstanceS3Storage *s3;

@end
