//
//  UASQSSendMessageBatchResultEntry.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UASQSModel.h"

@interface UASQSSendMessageBatchResultEntry : UASQSModel

@property (nonatomic, copy) NSString *identifier;
@property (nonatomic, copy) NSString *messageID;
@property (nonatomic, copy) NSString *mD5OfMessageBody;

@end
