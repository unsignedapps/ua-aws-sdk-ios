//
//  UAELBPolicyAttributeTypeDescription.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBModel.h"

@interface UAELBPolicyAttributeTypeDescription : UAELBModel

@property (nonatomic, copy) NSString *attributeName;
@property (nonatomic, copy) NSString *attributeType;
@property (nonatomic, copy) NSString *descriptionValue;
@property (nonatomic, copy) NSString *defaultValue;
@property (nonatomic, copy) NSString *cardinality;

@end
