//
//  UAELBDescribeLoadBalancerPoliciesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBResponse.h"

@class UAELBPolicyDescription;

@interface UAELBDescribeLoadBalancerPoliciesResponse : UAELBResponse

@property (nonatomic, copy) NSArray *policyDescriptions;

@end
