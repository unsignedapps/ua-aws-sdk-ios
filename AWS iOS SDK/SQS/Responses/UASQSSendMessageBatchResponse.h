//
//  UASQSSendMessageBatchResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UASQSResponse.h"

@class UASQSSendMessageBatchResultEntry, UASQSBatchResultErrorEntry;

@interface UASQSSendMessageBatchResponse : UASQSResponse

@property (nonatomic, copy) NSArray *successful;
@property (nonatomic, copy) NSArray *failed;

/**
 * Retrieves the UASQSSendMessageBatchResultEntry at the specified index.
**/
- (UASQSSendMessageBatchResultEntry *)successfulAtIndex:(NSUInteger)index;

/**
 * Retrieves the UASQSBatchResultErrorEntry at the specified index.
**/
- (UASQSBatchResultErrorEntry *)failedAtIndex:(NSUInteger)index;

@end
