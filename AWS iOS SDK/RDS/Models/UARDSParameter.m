//
//  UARDSParameter.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSParameter.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UARDSParameter

@synthesize parameterName=_parameterName, parameterValue=_parameterValue, description=_description, source=_source, applyType=_applyType, dataType=_dataType, allowedValues=_allowedValues, isModifiable=_isModifiable, minimumEngineVersion=_minimumEngineVersion, applyMethod=_applyMethod;

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UARDSModel queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"parameterName": @"ParameterName",
        @"parameterValue": @"ParameterValue",
        @"description": @"Description",
        @"source": @"Source",
        @"applyType": @"ApplyType",
        @"dataType": @"DataType",
        @"allowedValues": @"AllowedValues",
        @"isModifiable": @"IsModifiable",
        @"minimumEngineVersion": @"MinimumEngineVersion",
        @"applyMethod": @"ApplyMethod"
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
        @"parameterName": @"Rds:ParameterName",
        @"parameterValue": @"Rds:ParameterValue",
        @"description": @"Rds:Description",
        @"source": @"Rds:Source",
        @"applyType": @"Rds:ApplyType",
        @"dataType": @"Rds:DataType",
        @"allowedValues": @"Rds:AllowedValues",
        @"isModifiable": @"Rds:IsModifiable",
        @"minimumEngineVersion": @"Rds:MinimumEngineVersion",
        @"applyMethod": @"Rds:ApplyMethod"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)isModifiableXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

@end

#pragma clang diagnostic pop