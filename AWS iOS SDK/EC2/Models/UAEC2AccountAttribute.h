//
//  UAEC2AccountAttribute.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@interface UAEC2AccountAttribute : UAEC2Model

@property (nonatomic, copy) NSString *attributeName;
@property (nonatomic, copy) NSArray *attributeValues;

@end
