//
//  UASQSSendMessageBatchRequestEntry.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UASQSModel.h"

@interface UASQSSendMessageBatchRequestEntry : UASQSModel

@property (nonatomic, copy) NSString *identifier;
@property (nonatomic, copy) NSString *messageBody;
@property (nonatomic, strong) NSNumber *delaySeconds;

@end
