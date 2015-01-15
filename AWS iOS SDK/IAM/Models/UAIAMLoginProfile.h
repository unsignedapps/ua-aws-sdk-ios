//
//  UAIAMLoginProfile.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMModel.h"

@interface UAIAMLoginProfile : UAIAMModel

@property (nonatomic, copy) NSString *userName;
@property (nonatomic, copy) NSDate *createDate;
@property (nonatomic) BOOL passwordResetRequired;

@end
