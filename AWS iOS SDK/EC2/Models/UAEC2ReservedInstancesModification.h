//
//  UAEC2ReservedInstancesModification.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@class UAEC2ReservedInstancesID, UAEC2ReservedInstancesModificationResponse;

@interface UAEC2ReservedInstancesModification : UAEC2Model

@property (nonatomic, copy) NSString *reservedInstancesModificationID;
@property (nonatomic, copy) NSArray *reservedInstancesIDs;
@property (nonatomic, copy) NSArray *modificationResults;
@property (nonatomic, copy) NSDate *createDate;
@property (nonatomic, copy) NSDate *updateDate;
@property (nonatomic, copy) NSDate *effectiveDate;
@property (nonatomic, copy) NSString *status;
@property (nonatomic, copy) NSString *statusMessage;
@property (nonatomic, copy) NSString *clientToken;

/**
 * Retrieves the UAEC2ReservedInstancesID at the specified index.
**/
- (UAEC2ReservedInstancesID *)reservedInstancesIDAtIndex:(NSUInteger)index;

/**
 * Retrieves the UAEC2ReservedInstancesModificationResponse at the specified index.
**/
- (UAEC2ReservedInstancesModificationResponse *)modificationResultAtIndex:(NSUInteger)index;

/**
 * Adds a ReservedInstancesID to the reservedInstancesIDs property.
 *
 * This will initialise reservedInstancesIDs with an empty mutable array if necessary.
**/
- (void)addReservedInstancesID:(UAEC2ReservedInstancesID *)reservedInstancesID;
/**
 * Adds a ModificationResult to the modificationResults property.
 *
 * This will initialise modificationResults with an empty mutable array if necessary.
**/
- (void)addModificationResult:(UAEC2ReservedInstancesModificationResponse *)modificationResult;

@end
