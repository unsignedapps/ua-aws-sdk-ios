//
//  UASNSPublishResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UASNSPublishResponse.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

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

#pragma clang diagnostic pop