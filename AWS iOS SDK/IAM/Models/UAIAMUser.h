//
//  UAIAMUser.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMModel.h"

@interface UAIAMUser : UAIAMModel

@property (nonatomic, copy) NSString *path;
@property (nonatomic, copy) NSString *userName;
@property (nonatomic, copy) NSString *userID;
@property (nonatomic, copy) NSString *arn;
@property (nonatomic, copy) NSDate *createDate;

@end
