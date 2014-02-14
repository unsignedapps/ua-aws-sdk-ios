//
//  UAEC2S3Storage.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@interface UAEC2S3Storage : UAEC2Model

@property (nonatomic, copy) NSString *bucket;
@property (nonatomic, copy) NSString *prefix;
@property (nonatomic, copy) NSString *aWSAccessKeyID;
@property (nonatomic, copy) NSString *uploadPolicy;
@property (nonatomic, copy) NSString *uploadPolicySignature;

@end
