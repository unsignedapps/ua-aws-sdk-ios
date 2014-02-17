//
//  UAIAMAccessKey.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMModel.h"

@interface UAIAMAccessKey : UAIAMModel

@property (nonatomic, copy) NSString *userName;
@property (nonatomic, copy) NSString *accessKeyID;
@property (nonatomic) UAIAMAccessKeyStatus status;
@property (nonatomic, copy) NSString *secretAccessKey;
@property (nonatomic, copy) NSDate *createDate;

@end
