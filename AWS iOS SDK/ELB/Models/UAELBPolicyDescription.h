//
//  UAELBPolicyDescription.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBModel.h"

@class UAELBPolicyAttributeDescription;

@interface UAELBPolicyDescription : UAELBModel

@property (nonatomic, copy) NSString *policyName;
@property (nonatomic, copy) NSString *policyTypeName;
@property (nonatomic, copy) NSArray *policyAttributeDescriptions;

/**
 * Retrieves the UAELBPolicyAttributeDescription at the specified index.
**/
- (UAELBPolicyAttributeDescription *)policyAttributeDescriptionAtIndex:(NSUInteger)index;

/**
 * Adds a PolicyAttributeDescription to the policyAttributeDescriptions property.
 *
 * This will initialise policyAttributeDescriptions with an empty mutable array if necessary.
**/
- (void)addPolicyAttributeDescription:(UAELBPolicyAttributeDescription *)policyAttributeDescription;

@end
