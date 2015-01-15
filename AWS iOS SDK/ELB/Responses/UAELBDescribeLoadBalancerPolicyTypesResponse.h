//
//  UAELBDescribeLoadBalancerPolicyTypesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBResponse.h"

@class UAELBPolicyTypeDescription;

@interface UAELBDescribeLoadBalancerPolicyTypesResponse : UAELBResponse

@property (nonatomic, copy) NSArray *policyTypeDescriptions;

/**
 * Retrieves the UAELBPolicyTypeDescription at the specified index.
**/
- (UAELBPolicyTypeDescription *)policyTypeDescriptionAtIndex:(NSUInteger)index;

/**
 * Adds a PolicyTypeDescription to the policyTypeDescriptions property.
 *
 * This will initialise policyTypeDescriptions with an empty mutable array if necessary.
**/
- (void)addPolicyTypeDescription:(UAELBPolicyTypeDescription *)policyTypeDescription;

@end
