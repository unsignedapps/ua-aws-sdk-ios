//
//  UASNSCreateTopicResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UASNSCreateTopicResponse.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UASNSCreateTopicResponse

@synthesize topicARN=_topicARN;

+ (NSString *)XPathPrefix
{
    return @"./Sns:CreateTopicResponse/Sns:CreateTopicResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UASNSResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"topicARN": @"Sns:TopicArn"
    }];
    return [keyPaths copy];
}

@end

#pragma clang diagnostic pop