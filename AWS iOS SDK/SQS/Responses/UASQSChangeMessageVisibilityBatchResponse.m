//
//  UASQSChangeMessageVisibilityBatchResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UASQSChangeMessageVisibilityBatchResponse.h"
#import "UASQSChangeMessageVisibilityBatchResultEntry.h"
#import "UASQSBatchResultError.h"

@implementation UASQSChangeMessageVisibilityBatchResponse

@synthesize successful=_successful, failed=_failed;

+ (NSString *)XPathPrefix
{
    return @"./sqs:ChangeMessageVisibilityBatchResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UASQSResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"successful": @"sqs:ChangeMessageVisibilityBatchResultEntry/sqs:ChangeMessageVisibilityBatchResultEntry",
        @"failed": @"sqs:BatchResultErrorEntry/sqs:BatchResultErrorEntry"
    }];
    return [keyPaths copy];
}

- (UASQSChangeMessageVisibilityBatchResultEntry *)successfulAtIndex:(NSUInteger)index
{
    if (self.successful == nil || index >= ([self.successful count]-1))
        return nil;

    return [self.successful objectAtIndex:index];
}

- (UASQSBatchResultError *)failedAtIndex:(NSUInteger)index
{
    if (self.failed == nil || index >= ([self.failed count]-1))
        return nil;

    return [self.failed objectAtIndex:index];
}

+ (NSValueTransformer *)successfulXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UASQSChangeMessageVisibilityBatchResultEntry class]];
}

+ (NSValueTransformer *)failedXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UASQSBatchResultError class]];
}

@end
