//
//  UAEC2RecurringCharge.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@interface UAEC2RecurringCharge : UAEC2Model

@property (nonatomic, copy) NSString *frequency;
@property (nonatomic, strong) NSNumber *amount;

@end
