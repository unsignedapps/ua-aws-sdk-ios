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

@property (nonatomic, copy) NSArray *queueUrls;

@end
