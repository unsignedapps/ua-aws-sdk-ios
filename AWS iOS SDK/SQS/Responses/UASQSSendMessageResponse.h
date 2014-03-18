//
//  UASQSSendMessageResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UASQSResponse.h"

@interface UASQSSendMessageResponse : UASQSResponse

@property (nonatomic, copy) NSString *mD5OfMessageBody;
@property (nonatomic, copy) NSString *messageID;

@end
