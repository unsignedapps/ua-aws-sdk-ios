//
//  UAIAMGetRolePolicyResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMResponse.h"

@interface UAIAMGetRolePolicyResponse : UAIAMResponse

@property (nonatomic, copy) NSString *roleName;
@property (nonatomic, copy) NSString *policyName;
@property (nonatomic, copy) NSString *policyDocument;

@end
