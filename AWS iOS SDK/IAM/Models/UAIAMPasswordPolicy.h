//
//  UAIAMPasswordPolicy.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMModel.h"

@interface UAIAMPasswordPolicy : UAIAMModel

@property (nonatomic, strong) NSNumber *minimumPasswordLength;
@property (nonatomic) BOOL requireSymbols;
@property (nonatomic) BOOL requireNumbers;
@property (nonatomic) BOOL requireUppercaseCharacters;
@property (nonatomic) BOOL requireLowercaseCharacters;
@property (nonatomic) BOOL allowUsersToChangePassword;
@property (nonatomic) BOOL expirePasswords;
@property (nonatomic, strong) NSNumber *maxPasswordAge;

@end
