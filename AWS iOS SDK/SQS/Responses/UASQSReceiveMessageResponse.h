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

/**
 * Retrieves the UASQSMessage at the specified index.
**/
- (UASQSMessage *)messageAtIndex:(NSUInteger)index;

/**
 * Adds a Message to the messages property.
 *
 * This will initialise messages with an empty mutable array if necessary.
**/
- (void)addMessage:(UASQSMessage *)message;

@end
