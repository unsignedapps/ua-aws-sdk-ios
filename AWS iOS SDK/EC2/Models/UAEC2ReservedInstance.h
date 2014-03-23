//
//  UAEC2ReservedInstance.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@class UAEC2Tag, UAEC2RecurringCharge;

@interface UAEC2ReservedInstance : UAEC2Model

@property (nonatomic, copy) NSString *reservedInstancesID;
@property (nonatomic, copy) NSString *instanceType;
@property (nonatomic, copy) NSString *availabilityZone;
@property (nonatomic, strong) NSDate *start;
@property (nonatomic, strong) NSDate *end;
@property (nonatomic, strong) NSNumber *duration;
@property (nonatomic, strong) NSNumber *usagePrice;
@property (nonatomic, strong) NSNumber *fixedPrice;
@property (nonatomic, strong) NSNumber *instanceCount;
@property (nonatomic, copy) NSString *productDescription;
@property (nonatomic) UAEC2ReservedInstanceListingState state;
@property (nonatomic, copy) NSArray *tags;
@property (nonatomic, copy) NSString *instanceTenancy;
@property (nonatomic, copy) NSString *currencyCode;
@property (nonatomic, copy) NSString *offeringType;
@property (nonatomic, copy) NSArray *recurringCharges;

@end
