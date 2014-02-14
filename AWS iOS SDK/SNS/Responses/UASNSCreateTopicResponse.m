//
//  UASNSCreateTopicResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UASNSCreateTopicResponse.h"

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
