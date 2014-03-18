//
//  UASQSSendMessageResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UASQSSendMessageResponse.h"

@implementation UASQSSendMessageResponse

@synthesize mD5OfMessageBody=_mD5OfMessageBody, messageID=_messageID;

+ (NSString *)XPathPrefix
{
    return @"./sqs:SendMessageResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UASQSResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"mD5OfMessageBody": @"sqs:MD5OfMessageBody",
        @"messageID": @"sqs:MessageId"
    }];
    return [keyPaths copy];
}

@end
