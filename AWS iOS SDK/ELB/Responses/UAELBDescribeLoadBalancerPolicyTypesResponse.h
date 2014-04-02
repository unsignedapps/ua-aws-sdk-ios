//
//  UAELBDescribeLoadBalancerPolicyTypesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
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

@end
