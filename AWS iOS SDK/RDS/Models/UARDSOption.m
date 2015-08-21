//
//  UARDSOption.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSOption.h"
#import "UAAWSAdditionalAccessors.h"
#import "UARDSOptionSetting.h"
#import "UARDSDBSecurityGroupMembership.h"
#import "UARDSVPCSecurityGroupMembership.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UARDSOption

@synthesize optionName=_optionName, optionDescription=_optionDescription, persistent=_persistent, permanent=_permanent, port=_port, optionSettings=_optionSettings, dBSecurityGroupMemberships=_dBSecurityGroupMemberships, vpcSecurityGroupMemberships=_vpcSecurityGroupMemberships;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(optionSettingAtIndex:) propertyName:@"optionSettings"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(dBSecurityGroupMembershipAtIndex:) propertyName:@"dBSecurityGroupMemberships"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(vpcSecurityGroupMembershipAtIndex:) propertyName:@"vpcSecurityGroupMemberships"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addOptionSetting:) propertyName:@"optionSettings"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addDBSecurityGroupMembership:) propertyName:@"dBSecurityGroupMemberships"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addVPCSecurityGroupMembership:) propertyName:@"vpcSecurityGroupMemberships"];
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
        @"optionName": @"Rds:OptionName",
        @"optionDescription": @"Rds:OptionDescription",
        @"persistent": @"Rds:Persistent",
        @"permanent": @"Rds:Permanent",
        @"port": @"Rds:Port",
        @"optionSettings": @"Rds:OptionSettings/Rds:OptionSetting",
        @"dBSecurityGroupMemberships": @"Rds:DBSecurityGroupMemberships/Rds:DBSecurityGroup",
        @"vpcSecurityGroupMemberships": @"Rds:VpcSecurityGroupMemberships/Rds:VpcSecurityGroupMembership"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)optionSettingsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UARDSOptionSetting class]];
}

+ (NSValueTransformer *)dBSecurityGroupMembershipsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UARDSDBSecurityGroupMembership class]];
}

+ (NSValueTransformer *)vpcSecurityGroupMembershipsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UARDSVPCSecurityGroupMembership class]];
}

+ (NSValueTransformer *)persistentXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

+ (NSValueTransformer *)permanentXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

+ (NSValueTransformer *)portXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)optionSettingsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UARDSOptionSetting class]];
}

+ (NSValueTransformer *)dBSecurityGroupMembershipsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UARDSDBSecurityGroupMembership class]];
}

+ (NSValueTransformer *)vpcSecurityGroupMembershipsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UARDSVPCSecurityGroupMembership class]];
}

@end

#pragma clang diagnostic pop