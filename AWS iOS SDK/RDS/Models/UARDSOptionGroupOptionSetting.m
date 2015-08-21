//
//  UARDSOptionGroupOptionSetting.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSOptionGroupOptionSetting.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UARDSOptionGroupOptionSetting

@synthesize settingName=_settingName, settingDescription=_settingDescription, defaultValue=_defaultValue, applyType=_applyType, allowedValues=_allowedValues, isModifiable=_isModifiable;

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
        @"settingName": @"Rds:SettingName",
        @"settingDescription": @"Rds:SettingDescription",
        @"defaultValue": @"Rds:DefaultValue",
        @"applyType": @"Rds:ApplyType",
        @"allowedValues": @"Rds:AllowedValues",
        @"isModifiable": @"Rds:IsModifiable"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)isModifiableXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

@end

#pragma clang diagnostic pop