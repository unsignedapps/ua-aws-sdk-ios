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

@end
