//
//  UASQSGetQueueAttributesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UASQSResponse.h"

@interface UASQSGetQueueAttributesResponse : UASQSResponse

@property (nonatomic, copy) NSDictionary *attributes;

@end
