//
//  UASQSChangeMessageVisibilityBatchRequestEntry.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UASQSChangeMessageVisibilityBatchRequestEntry.h"

@implementation UASQSChangeMessageVisibilityBatchRequestEntry

@synthesize identifier=_identifier, receiptHandle=_receiptHandle, visibilityTimeout=_visibilityTimeout;

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UASQSModel queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"identifier": @"Id",
        @"receiptHandle": @"ReceiptHandle",
        @"visibilityTimeout": @"VisibilityTimeout"
    }];
    return [keyPaths copy];
}

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
        @"receiptHandle": @"sqs:ReceiptHandle",
        @"visibilityTimeout": @"sqs:VisibilityTimeout"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)visibilityTimeoutXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

@end
