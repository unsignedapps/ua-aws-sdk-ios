//
//  UASNSListTopicsResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UASNSResponse.h"

@class UASNSTopic;

@interface UASNSListTopicsResponse : UASNSResponse

@property (nonatomic, copy) NSArray *topics;
@property (nonatomic, copy) NSString *nextToken;

/**
 * Retrieves the UASNSTopic at the specified index.
**/
- (UASNSTopic *)topicAtIndex:(NSUInteger)index;

/**
 * Adds a Topic to the topics property.
 *
 * This will initialise topics with an empty mutable array if necessary.
**/
- (void)addTopic:(UASNSTopic *)topic;

@end
