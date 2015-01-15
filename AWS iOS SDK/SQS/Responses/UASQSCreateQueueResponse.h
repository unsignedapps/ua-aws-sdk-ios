//
//  UASQSCreateQueueResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UASQSResponse.h"

@interface UASQSCreateQueueResponse : UASQSResponse

@property (nonatomic, copy) NSString *queueURL;

@end
