//
//  UAEC2ReservedInstancesOffering.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
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

/**
 * Retrieves the UAEC2RecurringCharge at the specified index.
**/
- (UAEC2RecurringCharge *)recurringChargeAtIndex:(NSUInteger)index;

/**
 * Retrieves the UAEC2PricingDetail at the specified index.
**/
- (UAEC2PricingDetail *)pricingDetailAtIndex:(NSUInteger)index;

@end
