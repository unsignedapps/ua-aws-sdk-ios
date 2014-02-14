//
//  UAEC2SpotPriceHistory.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@interface UAEC2SpotPriceHistory : UAEC2Model

@property (nonatomic, copy) NSString *instanceType;
@property (nonatomic, copy) NSString *productDescription;
@property (nonatomic, copy) NSString *spotPrice;
@property (nonatomic, copy) NSString *timestamp;
@property (nonatomic, copy) NSString *availabilityZone;

@end
