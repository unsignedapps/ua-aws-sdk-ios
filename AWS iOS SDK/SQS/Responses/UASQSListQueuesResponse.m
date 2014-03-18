//
//  UASQSListQueuesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UASQSListQueuesResponse.h"

@implementation UASQSListQueuesResponse

@synthesize queueUrls=_queueUrls;

+ (NSString *)XPathPrefix
{
    return @"./sqs:ListQueuesResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UASQSResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"queueUrls": @"sqs:QueueUrl/sqs:QueueUrl"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)queueUrlsXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForArrayOfStrings];
}

@end
