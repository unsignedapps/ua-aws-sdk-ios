//
//  UAIAMGetUserPolicyResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMResponse.h"

@interface UAIAMGetUserPolicyResponse : UAIAMResponse

@property (nonatomic, copy) NSString *userName;
@property (nonatomic, copy) NSString *policyName;
@property (nonatomic, copy) NSString *policyDocument;

@end
