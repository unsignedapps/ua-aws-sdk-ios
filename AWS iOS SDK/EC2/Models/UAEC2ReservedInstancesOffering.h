//
//  UAEC2ReservedInstancesOffering.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
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
@property (nonatomic) UAEC2ReservedInstanceOfferingProductDescription productDescription;
@property (nonatomic) UAEC2InstanceTenancy instanceTenancy;
@property (nonatomic, copy) NSString *currencyCode;
@property (nonatomic) UAEC2ReservedInstanceOfferingType offeringType;
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

/**
 * Adds a RecurringCharge to the recurringCharges property.
 *
 * This will initialise recurringCharges with an empty mutable array if necessary.
**/
- (void)addRecurringCharge:(UAEC2RecurringCharge *)recurringCharge;
/**
 * Adds a PricingDetail to the pricingDetails property.
 *
 * This will initialise pricingDetails with an empty mutable array if necessary.
**/
- (void)addPricingDetail:(UAEC2PricingDetail *)pricingDetail;

@end
