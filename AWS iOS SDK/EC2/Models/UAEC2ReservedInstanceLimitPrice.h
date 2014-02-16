//
//  UAEC2ReservedInstanceLimitPrice.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@interface UAEC2ReservedInstanceLimitPrice : UAEC2Model

@property (nonatomic, strong) NSNumber *amount;
@property (nonatomic, copy) NSString *currencyCode;

@end
