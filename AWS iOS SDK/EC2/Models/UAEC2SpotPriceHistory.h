//
//  UAEC2SpotPriceHistory.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@interface UAEC2SpotPriceHistory : UAEC2Model

@property (nonatomic, copy) NSString *instanceType;
@property (nonatomic) UAEC2SpotRequestProductDescription productDescription;
@property (nonatomic, strong) NSNumber *spotPrice;
@property (nonatomic, strong) NSDate *timestamp;
@property (nonatomic, copy) NSString *availabilityZone;

@end
