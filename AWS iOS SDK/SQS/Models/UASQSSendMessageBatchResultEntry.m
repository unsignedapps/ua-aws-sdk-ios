//
//  UASQSSendMessageBatchResultEntry.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UASQSSendMessageBatchResultEntry.h"

@implementation UASQSSendMessageBatchResultEntry

@synthesize identifier=_identifier, messageID=_messageID, mD5OfMessageBody=_mD5OfMessageBody;

+ (NSString *)XPathPrefix
{
    return @"./";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UASQSModel XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"identifier": @"sqs:Id",
        @"messageID": @"sqs:MessageId",
        @"mD5OfMessageBody": @"sqs:MD5OfMessageBody"
    }];
    return [keyPaths copy];
}

@end
