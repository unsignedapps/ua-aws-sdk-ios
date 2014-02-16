//
//  UAEC2DescriptionValue.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@interface UAEC2DescriptionValue : UAEC2Model

@property (nonatomic, copy) NSString *value;

- (id)initWithValue:(NSString *)value;

@end
