//
//  UASQSMessage.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UASQSMessage.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UASQSMessage

@synthesize messageID=_messageID, receiptHandle=_receiptHandle, mD5OfBody=_mD5OfBody, body=_body, attributes=_attributes;

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
        @"messageID": @"sqs:MessageId",
        @"receiptHandle": @"sqs:ReceiptHandle",
        @"mD5OfBody": @"sqs:MD5OfBody",
        @"body": @"sqs:Body",
        @"attributes": @"sqs:Attribute.entry"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)attributesQueryStringTransformer
{
    return [NSValueTransformer UA_JSONKeyValueTransformerWithKeyName:@"Name" valueName:@"Value"];
}

+ (NSValueTransformer *)attributesXMLTransformer
{
    return [NSValueTransformer UA_XMLKeyValueTransformerWithKeyName:@"Name" valueName:@"Value"];
}

@end

#pragma clang diagnostic pop