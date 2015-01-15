//
//  UASQSChangeMessageVisibilityBatchRequestEntry.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UASQSModel.h"

@interface UASQSChangeMessageVisibilityBatchRequestEntry : UASQSModel

@property (nonatomic, copy) NSString *identifier;
@property (nonatomic, copy) NSString *receiptHandle;
@property (nonatomic, strong) NSNumber *visibilityTimeout;

@end
