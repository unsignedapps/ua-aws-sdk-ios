//
//  UAELBDescribeLoadBalancerPoliciesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBResponse.h"

@class UAELBPolicyDescription;

@interface UAELBDescribeLoadBalancerPoliciesResponse : UAELBResponse

@property (nonatomic, copy) NSArray *policyDescriptions;

/**
 * Retrieves the UAELBPolicyDescription at the specified index.
**/
- (UAELBPolicyDescription *)policyDescriptionAtIndex:(NSUInteger)index;

@end
