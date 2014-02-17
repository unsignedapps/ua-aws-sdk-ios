//
//  UAIAMInstanceProfile.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMModel.h"

@class UAIAMRole;

@interface UAIAMInstanceProfile : UAIAMModel

@property (nonatomic, copy) NSString *path;
@property (nonatomic, copy) NSString *instanceProfileName;
@property (nonatomic, copy) NSString *instanceProfileID;
@property (nonatomic, copy) NSString *arn;
@property (nonatomic, copy) NSDate *createDate;
@property (nonatomic, copy) NSArray *roles;

@end
