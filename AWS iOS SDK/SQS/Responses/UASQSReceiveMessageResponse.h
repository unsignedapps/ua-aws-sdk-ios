//
//  UASQSReceiveMessageResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UASQSResponse.h"

@class UASQSMessage;

@interface UASQSReceiveMessageResponse : UASQSResponse

@property (nonatomic, copy) NSArray *messages;

@end
