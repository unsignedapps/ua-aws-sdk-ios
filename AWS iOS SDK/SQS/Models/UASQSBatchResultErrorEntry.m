//
//  UASQSBatchResultErrorEntry.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UASQSBatchResultErrorEntry.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UASQSBatchResultErrorEntry

@synthesize identifier=_identifier, senderFault=_senderFault, code=_code, message=_message;

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
        @"senderFault": @"sqs:SenderFault",
        @"code": @"sqs:Code",
        @"message": @"sqs:Message"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)senderFaultQueryStringTransformer
{
    return [UAMTLValueTransformer UA_JSONTransformerForBooleanString];
}

+ (NSValueTransformer *)senderFaultXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

@end

#pragma clang diagnostic pop