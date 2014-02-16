//
//  UASNSDeleteTopicResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UASNSDeleteTopicResponse.h"

@implementation UASNSDeleteTopicResponse

@synthesize requestID=_requestID;

+ (NSString *)XPathPrefix
{
    return @"./Sns:DeleteTopicResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UASNSResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"requestID": @"Sns:ResponseMetadata/Sns:RequestId"
    }];
    return [keyPaths copy];
}

@end
