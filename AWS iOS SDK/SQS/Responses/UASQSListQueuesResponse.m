//
//  UASQSListQueuesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UASQSListQueuesResponse.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UASQSListQueuesResponse

@synthesize queueURLs=_queueURLs;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(queueURLAtIndex:) propertyName:@"queueURLs"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addQueueURL:) propertyName:@"queueURLs"];
	}
	return self;
}

+ (NSString *)XPathPrefix
{
    return @"./sqs:ListQueuesResponse/sqs:ListQueuesResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UASQSResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"queueURLs": @"sqs:QueueUrl"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)queueURLsXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForArrayOfStrings];
}

@end

#pragma clang diagnostic pop