//
//  UAELBPolicyTypeDescription.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBModel.h"

@class UAELBPolicyAttributeTypeDescription;

@interface UAELBPolicyTypeDescription : UAELBModel

@property (nonatomic, copy) NSString *policyTypeName;
@property (nonatomic, copy) NSString *descriptionValue;
@property (nonatomic, copy) NSArray *policyAttributeTypeDescriptions;

/**
 * Retrieves the UAELBPolicyAttributeTypeDescription at the specified index.
**/
- (UAELBPolicyAttributeTypeDescription *)policyAttributeTypeDescriptionAtIndex:(NSUInteger)index;

@end
