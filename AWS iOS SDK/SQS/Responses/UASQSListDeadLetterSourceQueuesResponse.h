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

@end
