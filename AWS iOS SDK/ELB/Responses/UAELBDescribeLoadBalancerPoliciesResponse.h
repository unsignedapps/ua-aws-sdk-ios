//
//  UAELBDescribeLoadBalancerPoliciesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
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

/**
 * Adds a PolicyDescription to the policyDescriptions property.
 *
 * This will initialise policyDescriptions with an empty mutable array if necessary.
**/
- (void)addPolicyDescription:(UAELBPolicyDescription *)policyDescription;

@end
