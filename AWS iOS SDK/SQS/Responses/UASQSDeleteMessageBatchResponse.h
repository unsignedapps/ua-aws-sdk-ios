//
//  UASQSDeleteMessageBatchResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UASQSResponse.h"

@class UASQSDeleteMessageBatchResultEntry, UASQSBatchResultErrorEntry;

@interface UASQSDeleteMessageBatchResponse : UASQSResponse

@property (nonatomic, copy) NSArray *successful;
@property (nonatomic, copy) NSArray *failed;

/**
 * Retrieves the UASQSDeleteMessageBatchResultEntry at the specified index.
**/
- (UASQSDeleteMessageBatchResultEntry *)successfulAtIndex:(NSUInteger)index;

/**
 * Retrieves the UASQSBatchResultErrorEntry at the specified index.
**/
- (UASQSBatchResultErrorEntry *)failedAtIndex:(NSUInteger)index;

/**
 * Adds a Successful to the successful property.
 *
 * This will initialise successful with an empty mutable array if necessary.
**/
- (void)addSuccessful:(UASQSDeleteMessageBatchResultEntry *)successful;
/**
 * Adds a Failed to the failed property.
 *
 * This will initialise failed with an empty mutable array if necessary.
**/
- (void)addFailed:(UASQSBatchResultErrorEntry *)failed;

@end
