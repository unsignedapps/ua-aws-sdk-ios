//
//  UARDSOptionGroup.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSOptionGroup.h"
#import "UAAWSAdditionalAccessors.h"
#import "UARDSOption.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UARDSOptionGroup

@synthesize optionGroupName=_optionGroupName, optionGroupDescription=_optionGroupDescription, engineName=_engineName, majorEngineVersion=_majorEngineVersion, options=_options, allowsVPCAndNonVPCInstanceMemberships=_allowsVPCAndNonVPCInstanceMemberships, vpcID=_vpcID;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(optionAtIndex:) propertyName:@"options"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addOption:) propertyName:@"options"];
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
        @"optionGroupName": @"Rds:OptionGroupName",
        @"optionGroupDescription": @"Rds:OptionGroupDescription",
        @"engineName": @"Rds:EngineName",
        @"majorEngineVersion": @"Rds:MajorEngineVersion",
        @"options": @"Rds:Options/Rds:Option",
        @"allowsVPCAndNonVPCInstanceMemberships": @"Rds:AllowsVpcAndNonVpcInstanceMemberships",
        @"vpcID": @"Rds:VpcId"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)optionsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UARDSOption class]];
}

+ (NSValueTransformer *)optionsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UARDSOption class]];
}

+ (NSValueTransformer *)allowsVPCAndNonVPCInstanceMembershipsXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

@end

#pragma clang diagnostic pop