//
//  UASQSDeleteMessageBatchResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UASQSDeleteMessageBatchResponse.h"
#import "UASQSDeleteMessageBatchResultEntry.h"
#import "UASQSBatchResultErrorEntry.h"

@implementation UASQSDeleteMessageBatchResponse

@synthesize successful=_successful, failed=_failed;

+ (NSString *)XPathPrefix
{
    return @"./sqs:DeleteMessageBatchResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UASQSResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"successful": @"sqs:DeleteMessageBatchResultEntry/sqs:DeleteMessageBatchResultEntry",
        @"failed": @"sqs:BatchResultErrorEntry/sqs:BatchResultErrorEntry"
    }];
    return [keyPaths copy];
}

- (UASQSDeleteMessageBatchResultEntry *)successfulAtIndex:(NSUInteger)index
{
    if (self.successful == nil || index >= ([self.successful count]-1))
        return nil;

    return [self.successful objectAtIndex:index];
}

- (UASQSBatchResultErrorEntry *)failedAtIndex:(NSUInteger)index
{
    if (self.failed == nil || index >= ([self.failed count]-1))
        return nil;

    return [self.failed objectAtIndex:index];
}

+ (NSValueTransformer *)successfulXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UASQSDeleteMessageBatchResultEntry class]];
}

+ (NSValueTransformer *)failedXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UASQSBatchResultErrorEntry class]];
}

@end
