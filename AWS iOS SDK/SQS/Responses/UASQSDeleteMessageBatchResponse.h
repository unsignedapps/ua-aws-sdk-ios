//
//  UASQSDeleteMessageBatchResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
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

@end
