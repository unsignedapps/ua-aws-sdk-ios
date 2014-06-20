//
//  UASQSDeleteQueueResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UASQSDeleteQueueResponse.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UASQSDeleteQueueResponse

+ (NSString *)XPathPrefix
{
    return @"./sqs:DeleteQueueResponse/";
}

@end

#pragma clang diagnostic pop