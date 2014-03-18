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

@end
