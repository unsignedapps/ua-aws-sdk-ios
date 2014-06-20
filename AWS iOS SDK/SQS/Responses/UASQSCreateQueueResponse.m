//
//  UASQSCreateQueueResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UASQSCreateQueueResponse.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UASQSCreateQueueResponse

@synthesize queueUrl=_queueUrl;

+ (NSString *)XPathPrefix
{
    return @"./sqs:CreateQueueResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UASQSResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"queueUrl": @"sqs:QueueUrl"
    }];
    return [keyPaths copy];
}

@end

#pragma clang diagnostic pop