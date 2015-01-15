//
//  UASQSDeleteMessageBatchRequestEntry.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UASQSDeleteMessageBatchRequestEntry.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UASQSDeleteMessageBatchRequestEntry

@synthesize identifier=_identifier, receiptHandle=_receiptHandle;

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UASQSModel queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"identifier": @"Id",
        @"receiptHandle": @"ReceiptHandle"
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
        @"receiptHandle": @"sqs:ReceiptHandle"
    }];
    return [keyPaths copy];
}

@end

#pragma clang diagnostic pop