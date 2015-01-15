//
//  UAEC2Storage.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@class UAEC2S3Storage;

@interface UAEC2Storage : UAEC2Model

@property (nonatomic, copy) UAEC2S3Storage *s3;

- (id)initWithS3:(UAEC2S3Storage *)s3;

@end
