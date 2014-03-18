//
//  UASQSSendMessageBatchRequestEntry.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UASQSSendMessageBatchRequestEntry.h"

@implementation UASQSSendMessageBatchRequestEntry

@synthesize identifier=_identifier, messageBody=_messageBody, delaySeconds=_delaySeconds;

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UASQSModel queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"identifier": @"Id",
        @"messageBody": @"MessageBody",
        @"delaySeconds": @"DelaySeconds"
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
        @"messageBody": @"sqs:MessageBody",
        @"delaySeconds": @"sqs:DelaySeconds"
    }];
    return [keyPaths copy];
}

- (void)setIdentifier:(NSString *)identifier
{
	_identifier = identifier;
	
	if (![self.UA_dirtyProperties containsObject:@"identifier"])
		[self.UA_dirtyProperties addObject:@"identifier"];
}

- (void)setMessageBody:(NSString *)messageBody
{
	_messageBody = messageBody;
	
	if (![self.UA_dirtyProperties containsObject:@"messageBody"])
		[self.UA_dirtyProperties addObject:@"messageBody"];
}

- (void)setDelaySeconds:(NSNumber *)delaySeconds
{
	_delaySeconds = delaySeconds;
	
	if (![self.UA_dirtyProperties containsObject:@"delaySeconds"])
		[self.UA_dirtyProperties addObject:@"delaySeconds"];
}

+ (NSValueTransformer *)delaySecondsXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

@end
