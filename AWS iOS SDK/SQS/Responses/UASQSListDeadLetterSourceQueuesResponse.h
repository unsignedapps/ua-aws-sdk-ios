//
//  UASQSListDeadLetterSourceQueuesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UASQSResponse.h"

@interface UASQSListDeadLetterSourceQueuesResponse : UASQSResponse

@property (nonatomic, copy) NSArray *queueURLs;

/**
 * Retrieves the NSString at the specified index.
**/
- (NSString *)queueURLAtIndex:(NSUInteger)index;

/**
 * Adds a queueURL to the queueURLs property.
 *
 * This will initialise queueURLs with an empty mutable array if necessary.
**/
- (void)addqueueURL:(NSString *)queueURL;

@end
