//
//  UAIAMAccessKeyMetadata.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMModel.h"

@interface UAIAMAccessKeyMetadata : UAIAMModel

@property (nonatomic, copy) NSString *userName;
@property (nonatomic, copy) NSString *accessKeyID;
@property (nonatomic) UAIAMAccessKeyStatus status;
@property (nonatomic, copy) NSDate *createDate;

@end
