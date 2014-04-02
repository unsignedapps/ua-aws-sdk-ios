//
//  UAELBPolicyDescription.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
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

@end
