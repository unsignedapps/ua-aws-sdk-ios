//
//  UAIAMGetGroupPolicyResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMResponse.h"

@interface UAIAMGetGroupPolicyResponse : UAIAMResponse

@property (nonatomic, copy) NSString *groupName;
@property (nonatomic, copy) NSString *policyName;
@property (nonatomic, copy) NSString *policyDocument;

@end
