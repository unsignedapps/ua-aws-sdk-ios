//
//  UARDSOptionGroupOption.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSOptionGroupOption.h"
#import "UAAWSAdditionalAccessors.h"
#import "UARDSOptionGroupOptionSetting.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UARDSOptionGroupOption

@synthesize name=_name, description=_description, engineName=_engineName, majorEngineVersion=_majorEngineVersion, minimumRequiredMinorEngineVersion=_minimumRequiredMinorEngineVersion, portRequired=_portRequired, defaultPort=_defaultPort, optionsDependedOn=_optionsDependedOn, persistent=_persistent, permanent=_permanent, optionGroupOptionSettings=_optionGroupOptionSettings;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(optionDependedOnAtIndex:) propertyName:@"optionsDependedOn"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(optionGroupOptionSettingAtIndex:) propertyName:@"optionGroupOptionSettings"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addOptionDependedOn:) propertyName:@"optionsDependedOn"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addOptionGroupOptionSetting:) propertyName:@"optionGroupOptionSettings"];
	}
	return self;
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
        @"description": @"Rds:Description",
        @"engineName": @"Rds:EngineName",
        @"majorEngineVersion": @"Rds:MajorEngineVersion",
        @"minimumRequiredMinorEngineVersion": @"Rds:MinimumRequiredMinorEngineVersion",
        @"portRequired": @"Rds:PortRequired",
        @"defaultPort": @"Rds:DefaultPort",
        @"optionsDependedOn": @"Rds:OptionsDependedOn/Rds:OptionName",
        @"persistent": @"Rds:Persistent",
        @"permanent": @"Rds:Permanent",
        @"optionGroupOptionSettings": @"Rds:OptionGroupOptionSettings/Rds:OptionGroupOptionSetting"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)optionGroupOptionSettingsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UARDSOptionGroupOptionSetting class]];
}

+ (NSValueTransformer *)portRequiredXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

+ (NSValueTransformer *)defaultPortXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)optionsDependedOnXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForArrayOfStrings];
}

+ (NSValueTransformer *)persistentXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

+ (NSValueTransformer *)permanentXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

+ (NSValueTransformer *)optionGroupOptionSettingsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UARDSOptionGroupOptionSetting class]];
}

@end

#pragma clang diagnostic pop