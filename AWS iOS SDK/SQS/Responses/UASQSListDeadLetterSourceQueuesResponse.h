//
//  UASQSListDeadLetterSourceQueuesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UASQSResponse.h"

@interface UASQSListDeadLetterSourceQueuesResponse : UASQSResponse

@property (nonatomic, copy) NSArray *queueUrls;

/**
 * Retrieves the NSString at the specified index.
**/
- (NSString *)queueURLAtIndex:(NSUInteger)index;

/**
 * Adds a queueURL to the queueUrls property.
 *
 * This will initialise queueUrls with an empty mutable array if necessary.
**/
- (void)addqueueURL:(NSString *)queueURL;

@end
