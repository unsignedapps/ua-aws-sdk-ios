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

@end
