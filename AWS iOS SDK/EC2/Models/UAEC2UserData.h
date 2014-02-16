//
//  UAEC2UserData.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@interface UAEC2UserData : UAEC2Model

@property (nonatomic, copy) NSString *value;

- (id)initWithValue:(NSString *)value;

@end
