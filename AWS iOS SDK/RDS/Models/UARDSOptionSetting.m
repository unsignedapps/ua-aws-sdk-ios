//
//  UARDSOptionSetting.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSOptionSetting.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UARDSOptionSetting

@synthesize name=_name, value=_value, defaultValue=_defaultValue, description=_description, applyType=_applyType, dataType=_dataType, allowedValues=_allowedValues, isModifiable=_isModifiable, isCollection=_isCollection;

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UARDSModel queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"name": @"Name",
        @"value": @"Value",
        @"defaultValue": @"DefaultValue",
        @"description": @"Description",
        @"applyType": @"ApplyType",
        @"dataType": @"DataType",
        @"allowedValues": @"AllowedValues",
        @"isModifiable": @"IsModifiable",
        @"isCollection": @"IsCollection"
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
    NSMutableDictionary *keyPaths = [[UARDSModel XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"name": @"Rds:Name",
        @"value": @"Rds:Value",
        @"defaultValue": @"Rds:DefaultValue",
        @"description": @"Rds:Description",
        @"applyType": @"Rds:ApplyType",
        @"dataType": @"Rds:DataType",
        @"allowedValues": @"Rds:AllowedValues",
        @"isModifiable": @"Rds:IsModifiable",
        @"isCollection": @"Rds:IsCollection"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)isModifiableXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

+ (NSValueTransformer *)isCollectionXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

@end

#pragma clang diagnostic pop