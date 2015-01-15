//
//  UAELBAccessLog.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBModel.h"

@interface UAELBAccessLog : UAELBModel

@property (nonatomic) BOOL enabled;
@property (nonatomic, copy) NSString *s3BucketName;
@property (nonatomic, strong) NSNumber *emitInterval;
@property (nonatomic, copy) NSString *s3BucketPrefix;

@end
