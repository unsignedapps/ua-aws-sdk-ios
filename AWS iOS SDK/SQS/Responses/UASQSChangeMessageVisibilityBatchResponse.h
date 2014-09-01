//
//  UASQSChangeMessageVisibilityBatchResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UASQSResponse.h"

@class UASQSChangeMessageVisibilityBatchResultEntry, UASQSBatchResultError;

@interface UASQSChangeMessageVisibilityBatchResponse : UASQSResponse

@property (nonatomic, copy) NSArray *successful;
@property (nonatomic, copy) NSArray *failed;

/**
 * Retrieves the UASQSChangeMessageVisibilityBatchResultEntry at the specified index.
**/
- (UASQSChangeMessageVisibilityBatchResultEntry *)successfulAtIndex:(NSUInteger)index;

/**
 * Retrieves the UASQSBatchResultError at the specified index.
**/
- (UASQSBatchResultError *)failedAtIndex:(NSUInteger)index;

/**
 * Adds a Successful to the successful property.
 *
 * This will initialise successful with an empty mutable array if necessary.
**/
- (void)addSuccessful:(UASQSChangeMessageVisibilityBatchResultEntry *)successful;
/**
 * Adds a Failed to the failed property.
 *
 * This will initialise failed with an empty mutable array if necessary.
**/
- (void)addFailed:(UASQSBatchResultError *)failed;

@end
