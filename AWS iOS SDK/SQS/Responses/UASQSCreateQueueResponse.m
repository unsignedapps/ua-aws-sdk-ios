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

@synthesize queueURL=_queueURL;

+ (NSString *)XPathPrefix
{
    return @"./sqs:CreateQueueResponse/sqs:CreateQueueResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UASQSResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"queueURL": @"sqs:QueueUrl"
    }];
    return [keyPaths copy];
}

@end

#pragma clang diagnostic pop