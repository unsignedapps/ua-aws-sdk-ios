//
//  UAEC2ReservedInstancesOffering.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@class UAEC2RecurringCharge, UAEC2PricingDetail;

@interface UAEC2ReservedInstancesOffering : UAEC2Model

@property (nonatomic, copy) NSString *reservedInstancesOfferingID;
@property (nonatomic, copy) NSString *instanceType;
@property (nonatomic, copy) NSString *availabilityZone;
@property (nonatomic, strong) NSNumber *duration;
@property (nonatomic, strong) NSNumber *usagePrice;
@property (nonatomic, strong) NSNumber *fixedPrice;
@property (nonatomic, copy) NSString *productDescription;
@property (nonatomic, copy) NSString *instanceTenancy;
@property (nonatomic, copy) NSString *currencyCode;
@property (nonatomic, copy) NSString *offeringType;
@property (nonatomic, copy) NSArray *recurringCharges;
@property (nonatomic) BOOL marketplace;
@property (nonatomic, copy) NSArray *pricingDetails;

@end
