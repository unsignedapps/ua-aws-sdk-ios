//
//  UAEC2ExportToS3TaskSpecification.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@interface UAEC2ExportToS3TaskSpecification : UAEC2Model

@property (nonatomic, copy) NSString *diskImageFormat;
@property (nonatomic, copy) NSString *containerFormat;
@property (nonatomic, copy) NSString *s3Bucket;
@property (nonatomic, copy) NSString *s3Prefix;

@end
