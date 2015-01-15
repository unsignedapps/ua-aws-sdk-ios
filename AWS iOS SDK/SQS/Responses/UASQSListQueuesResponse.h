//
//  UASQSListQueuesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UASQSResponse.h"

@interface UASQSListQueuesResponse : UASQSResponse

@property (nonatomic, copy) NSArray *queueURLs;

/**
 * Retrieves the NSString at the specified index.
**/
- (NSString *)queueURLAtIndex:(NSUInteger)index;

/**
 * Adds a QueueURL to the queueURLs property.
 *
 * This will initialise queueURLs with an empty mutable array if necessary.
**/
- (void)addQueueURL:(NSString *)queueURL;

@end
