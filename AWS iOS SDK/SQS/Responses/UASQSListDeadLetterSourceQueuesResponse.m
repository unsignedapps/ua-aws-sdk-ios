//
//  UASQSListDeadLetterSourceQueuesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UASQSListDeadLetterSourceQueuesResponse.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UASQSListDeadLetterSourceQueuesResponse

@synthesize queueUrls=_queueUrls;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(queueURLAtIndex:) propertyName:@"queueUrls"];
	}
	return self;
}

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

+ (NSValueTransformer *)queueUrlsXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForArrayOfStrings];
}

@end

#pragma clang diagnostic pop