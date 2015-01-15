//
//  UAEC2PriceScheduleSpecification.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@interface UAEC2PriceScheduleSpecification : UAEC2Model

@property (nonatomic, strong) NSNumber *term;
@property (nonatomic, strong) NSNumber *price;
@property (nonatomic, copy) NSString *currencyCode;

@end
