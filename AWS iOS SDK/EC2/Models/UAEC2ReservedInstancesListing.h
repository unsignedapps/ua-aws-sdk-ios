//
//  UAEC2ReservedInstancesListing.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@class UAEC2InstanceCount, UAEC2PriceSchedule, UAEC2Tag;

@interface UAEC2ReservedInstancesListing : UAEC2Model

@property (nonatomic, copy) NSString *reservedInstancesListingID;
@property (nonatomic, copy) NSString *reservedInstancesID;
@property (nonatomic, copy) NSDate *createDate;
@property (nonatomic, copy) NSDate *updateDate;
@property (nonatomic) UAEC2ReservedInstancesListingState status;
@property (nonatomic, copy) NSString *statusMessage;
@property (nonatomic, copy) NSArray *instanceCounts;
@property (nonatomic, copy) NSArray *priceSchedules;
@property (nonatomic, copy) NSArray *tags;
@property (nonatomic, copy) NSString *clientToken;

/**
 * Retrieves the UAEC2InstanceCount at the specified index.
**/
- (UAEC2InstanceCount *)instanceCountAtIndex:(NSUInteger)index;

/**
 * Retrieves the UAEC2PriceSchedule at the specified index.
**/
- (UAEC2PriceSchedule *)priceScheduleAtIndex:(NSUInteger)index;

/**
 * Retrieves the UAEC2Tag at the specified index.
**/
- (UAEC2Tag *)tagAtIndex:(NSUInteger)index;

/**
 * Adds a InstanceCount to the instanceCounts property.
 *
 * This will initialise instanceCounts with an empty mutable array if necessary.
**/
- (void)addInstanceCount:(UAEC2InstanceCount *)instanceCount;
/**
 * Adds a PriceSchedule to the priceSchedules property.
 *
 * This will initialise priceSchedules with an empty mutable array if necessary.
**/
- (void)addPriceSchedule:(UAEC2PriceSchedule *)priceSchedule;
/**
 * Adds a Tag to the tags property.
 *
 * This will initialise tags with an empty mutable array if necessary.
**/
- (void)addTag:(UAEC2Tag *)tag;

@end
