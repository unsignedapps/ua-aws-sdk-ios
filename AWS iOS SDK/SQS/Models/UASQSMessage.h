//
//  UASQSMessage.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UASQSModel.h"

@interface UASQSMessage : UASQSModel

@property (nonatomic, copy) NSString *messageID;
@property (nonatomic, copy) NSString *receiptHandle;
@property (nonatomic, copy) NSString *mD5OfBody;
@property (nonatomic, copy) NSString *body;
@property (nonatomic, copy) NSDictionary *attributes;
@property (nonatomic, copy) NSString *mD5OfMessageAttributes;

@end
