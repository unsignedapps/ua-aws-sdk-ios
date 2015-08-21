//
//  UARDSDBSecurityGroup.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSDBSecurityGroup.h"
#import "UAAWSAdditionalAccessors.h"
#import "UARDSEC2SecurityGroup.h"
#import "UARDSIPRange.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UARDSDBSecurityGroup

@synthesize ownerID=_ownerID, dBSecurityGroupName=_dBSecurityGroupName, dBSecurityGroupDescription=_dBSecurityGroupDescription, vpcID=_vpcID, eC2SecurityGroups=_eC2SecurityGroups, iPRanges=_iPRanges;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(eC2SecurityGroupAtIndex:) propertyName:@"eC2SecurityGroups"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(iPRangeAtIndex:) propertyName:@"iPRanges"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addEC2SecurityGroup:) propertyName:@"eC2SecurityGroups"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addIPRange:) propertyName:@"iPRanges"];
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
        @"ownerID": @"Rds:OwnerId",
        @"dBSecurityGroupName": @"Rds:DBSecurityGroupName",
        @"dBSecurityGroupDescription": @"Rds:DBSecurityGroupDescription",
        @"vpcID": @"Rds:VpcId",
        @"eC2SecurityGroups": @"Rds:EC2SecurityGroups/Rds:EC2SecurityGroup",
        @"iPRanges": @"Rds:IPRanges/Rds:IPRange"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)eC2SecurityGroupsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UARDSEC2SecurityGroup class]];
}

+ (NSValueTransformer *)iPRangesQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UARDSIPRange class]];
}

+ (NSValueTransformer *)eC2SecurityGroupsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UARDSEC2SecurityGroup class]];
}

+ (NSValueTransformer *)iPRangesXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UARDSIPRange class]];
}

@end

#pragma clang diagnostic pop