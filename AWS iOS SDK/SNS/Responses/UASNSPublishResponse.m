//
//  UASNSPublishResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UASNSPublishResponse.h"

@implementation UASNSPublishResponse

@synthesize messageID=_messageID;

+ (NSString *)XPathPrefix
{
    return @"./Sns:PublishResponse/Sns:PublishResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UASNSResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"messageID": @"Sns:MessageId"
    }];
    return [keyPaths copy];
}

@end
