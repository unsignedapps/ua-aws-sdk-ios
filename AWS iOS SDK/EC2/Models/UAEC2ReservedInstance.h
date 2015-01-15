//
//  UAEC2ReservedInstance.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
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
@property (nonatomic) UAEC2ReservedInstanceProductDescription productDescription;
@property (nonatomic) UAEC2ReservedInstanceState state;
@property (nonatomic, copy) NSArray *tags;
@property (nonatomic) UAEC2InstanceTenancy instanceTenancy;
@property (nonatomic, copy) NSString *currencyCode;
@property (nonatomic) UAEC2ReservedInstanceOfferingType offeringType;
@property (nonatomic, copy) NSArray *recurringCharges;

/**
 * Retrieves the UAEC2Tag at the specified index.
**/
- (UAEC2Tag *)tagAtIndex:(NSUInteger)index;

/**
 * Retrieves the UAEC2RecurringCharge at the specified index.
**/
- (UAEC2RecurringCharge *)recurringChargeAtIndex:(NSUInteger)index;

/**
 * Adds a Tag to the tags property.
 *
 * This will initialise tags with an empty mutable array if necessary.
**/
- (void)addTag:(UAEC2Tag *)tag;
/**
 * Adds a RecurringCharge to the recurringCharges property.
 *
 * This will initialise recurringCharges with an empty mutable array if necessary.
**/
- (void)addRecurringCharge:(UAEC2RecurringCharge *)recurringCharge;

@end
