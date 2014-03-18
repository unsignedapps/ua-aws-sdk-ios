//
//  UASQSDeleteMessageBatchRequestEntry.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UASQSModel.h"

@interface UASQSDeleteMessageBatchRequestEntry : UASQSModel

@property (nonatomic, copy) NSString *identifier;
@property (nonatomic, copy) NSString *receiptHandle;

@end
