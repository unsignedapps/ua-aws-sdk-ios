//
//  UASQSReceiveMessageResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UASQSReceiveMessageResponse.h"
#import "UASQSMessage.h"

@implementation UASQSReceiveMessageResponse

@synthesize messages=_messages;

+ (NSString *)XPathPrefix
{
    return @"./sqs:ReceiveMessageResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UASQSResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"messages": @"sqs:Message/sqs:Message"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)messagesXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UASQSMessage class]];
}

@end