//
//  UAEC2ExportToS3Task.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@interface UAEC2ExportToS3Task : UAEC2Model

@property (nonatomic, copy) NSString *diskImageFormat;
@property (nonatomic, copy) NSString *containerFormat;
@property (nonatomic, copy) NSString *s3Bucket;
@property (nonatomic, copy) NSString *s3Key;

@end
