//
//  UAIAMRole.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMModel.h"

@interface UAIAMRole : UAIAMModel

@property (nonatomic, copy) NSString *path;
@property (nonatomic, copy) NSString *roleName;
@property (nonatomic, copy) NSString *roleID;
@property (nonatomic, copy) NSString *arn;
@property (nonatomic, copy) NSDate *createDate;
@property (nonatomic, copy) NSString *assumeRolePolicyDocument;

@end
