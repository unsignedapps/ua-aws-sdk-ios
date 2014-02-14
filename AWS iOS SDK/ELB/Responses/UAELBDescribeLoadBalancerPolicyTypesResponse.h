//
//  UAELBDescribeLoadBalancerPolicyTypesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBResponse.h"

@class UAELBPolicyTypeDescription;

@interface UAELBDescribeLoadBalancerPolicyTypesResponse : UAELBResponse

@property (nonatomic, copy) NSArray *policyTypeDescriptions;

@end
