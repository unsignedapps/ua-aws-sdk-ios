//
//  UAELBPolicyTypeDescription.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBModel.h"

@class UAELBPolicyAttributeTypeDescription;

@interface UAELBPolicyTypeDescription : UAELBModel

@property (nonatomic, copy) NSString *policyTypeName;
@property (nonatomic, copy) NSString *descriptionValue;
@property (nonatomic, copy) NSArray *policyAttributeTypeDescriptions;

@end
