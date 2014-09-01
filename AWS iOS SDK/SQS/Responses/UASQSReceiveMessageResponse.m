//
//  UASQSReceiveMessageResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UASQSReceiveMessageResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UASQSMessage.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UASQSReceiveMessageResponse

@synthesize messages=_messages;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(messageAtIndex:) propertyName:@"messages"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addMessage:) propertyName:@"messages"];
	}
	return self;
}

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

#pragma clang diagnostic pop