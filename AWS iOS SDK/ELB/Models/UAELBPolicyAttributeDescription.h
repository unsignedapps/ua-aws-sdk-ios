//
//  UAELBPolicyAttributeDescription.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBModel.h"

@interface UAELBPolicyAttributeDescription : UAELBModel

@property (nonatomic, copy) NSString *attributeName;
@property (nonatomic, copy) NSString *attributeValue;

@end
