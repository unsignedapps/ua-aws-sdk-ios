//
//  UASQSChangeMessageVisibilityBatchResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UASQSChangeMessageVisibilityBatchResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UASQSChangeMessageVisibilityBatchResultEntry.h"
#import "UASQSBatchResultError.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UASQSChangeMessageVisibilityBatchResponse

@synthesize successful=_successful, failed=_failed;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(successfulAtIndex:) propertyName:@"successful"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(failedAtIndex:) propertyName:@"failed"];
	}
	return self;
}

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

+ (NSValueTransformer *)successfulXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UASQSChangeMessageVisibilityBatchResultEntry class]];
}

+ (NSValueTransformer *)failedXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UASQSBatchResultError class]];
}

@end

#pragma clang diagnostic pop