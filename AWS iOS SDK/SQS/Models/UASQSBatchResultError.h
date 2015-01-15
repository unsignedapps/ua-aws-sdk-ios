//
//  UASQSBatchResultError.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UASQSModel.h"

@interface UASQSBatchResultError : UASQSModel

@property (nonatomic, copy) NSString *identifier;
@property (nonatomic) BOOL senderFault;
@property (nonatomic, copy) NSString *code;
@property (nonatomic, copy) NSString *message;

@end
