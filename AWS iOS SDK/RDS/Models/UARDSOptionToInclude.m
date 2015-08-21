//
//  UARDSOptionToInclude.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSOptionToInclude.h"
#import "UAAWSAdditionalAccessors.h"
#import "UARDSOptionSetting.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UARDSOptionToInclude

@synthesize optionName=_optionName, port=_port, dBSecurityGroupMemberships=_dBSecurityGroupMemberships, vpcSecurityGroupMemberships=_vpcSecurityGroupMemberships, optionSettings=_optionSettings;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(dBSecurityGroupMembershipAtIndex:) propertyName:@"dBSecurityGroupMemberships"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(vpcSecurityGroupMembershipAtIndex:) propertyName:@"vpcSecurityGroupMemberships"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(optionSettingAtIndex:) propertyName:@"optionSettings"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addDBSecurityGroupMembership:) propertyName:@"dBSecurityGroupMemberships"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addVPCSecurityGroupMembership:) propertyName:@"vpcSecurityGroupMemberships"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addOptionSetting:) propertyName:@"optionSettings"];
	}
	return self;
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UARDSModel queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"optionName": @"OptionName",
        @"port": @"Port",
        @"dBSecurityGroupMemberships": @"DBSecurityGroupMemberships.Member",
        @"vpcSecurityGroupMemberships": @"VpcSecurityGroupMemberships.Member",
        @"optionSettings": @"OptionSettings.Member"
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
        @"optionName": @"Rds:OptionName",
        @"port": @"Rds:Port",
        @"dBSecurityGroupMemberships": @"Rds:DBSecurityGroupMemberships.member/Rds:DBSecurityGroupMemberships",
        @"vpcSecurityGroupMemberships": @"Rds:VpcSecurityGroupMemberships.member/Rds:VpcSecurityGroupMemberships",
        @"optionSettings": @"Rds:OptionSettings.member/Rds:OptionSettings"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)optionSettingsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UARDSOptionSetting class]];
}

+ (NSValueTransformer *)portXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)dBSecurityGroupMembershipsXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForArrayOfStrings];
}

+ (NSValueTransformer *)vpcSecurityGroupMembershipsXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForArrayOfStrings];
}

+ (NSValueTransformer *)optionSettingsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UARDSOptionSetting class]];
}

@end

#pragma clang diagnostic pop