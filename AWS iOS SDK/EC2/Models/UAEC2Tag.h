//
//  UAEC2Tag.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"
#import "UAAWSTag.h"

@interface UAEC2Tag : UAEC2Model <UAAWSTag>

@property (nonatomic, copy) NSString *key;
@property (nonatomic, copy) NSString *value;

@end
