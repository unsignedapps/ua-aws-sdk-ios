//
//  UASQSListDeadLetterSourceQueuesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UASQSListDeadLetterSourceQueuesResponse.h"

@implementation UASQSListDeadLetterSourceQueuesResponse

@synthesize queueUrls=_queueUrls;

+ (NSString *)XPathPrefix
{
    return @"./sqs:ListDeadLetterSourceQueuesResponse/";
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

- (NSString *)queueURLAtIndex:(NSUInteger)index
{
    if (self.queueUrls == nil || index >= ([self.queueUrls count]-1))
        return nil;

    return [self.queueUrls objectAtIndex:index];
}

+ (NSValueTransformer *)queueUrlsXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForArrayOfStrings];
}

@end
