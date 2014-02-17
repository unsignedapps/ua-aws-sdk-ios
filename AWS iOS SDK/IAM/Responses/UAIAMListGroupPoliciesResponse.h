//
//  UAIAMListGroupPoliciesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMResponse.h"

@interface UAIAMListGroupPoliciesResponse : UAIAMResponse

@property (nonatomic, copy) NSArray *policyNames;
@property (nonatomic) BOOL isTruncated;
@property (nonatomic, copy) NSString *marker;

@end
