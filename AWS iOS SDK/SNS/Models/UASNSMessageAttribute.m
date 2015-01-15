//
//  UASNSMessageAttribute.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UASNSMessageAttribute.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UASNSMessageAttribute

@synthesize dataType=_dataType, stringValue=_stringValue, binaryValue=_binaryValue;

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UASNSModel queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"dataType": @"DataType",
        @"stringValue": @"StringValue",
        @"binaryValue": @"BinaryValue"
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
    NSMutableDictionary *keyPaths = [[UASNSModel XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"dataType": @"Sns:DataType",
        @"stringValue": @"Sns:StringValue",
        @"binaryValue": @"Sns:BinaryValue"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)dataTypeQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UASNSMessageAttributeDataTypeString), @(UASNSMessageAttributeDataTypeNumber), @(UASNSMessageAttributeDataTypeBinary) ]
                                               stringValues:@[ @"String", @"Number", @"Binary" ]
                                               unknownValue:@(UASNSMessageAttributeDataTypeUnknown)];
}

+ (NSValueTransformer *)dataTypeXMLTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UASNSMessageAttributeDataTypeString), @(UASNSMessageAttributeDataTypeNumber), @(UASNSMessageAttributeDataTypeBinary) ]
                                               stringValues:@[ @"String", @"Number", @"Binary" ]
                                               unknownValue:@(UASNSMessageAttributeDataTypeUnknown)];
}

@end

#pragma clang diagnostic pop