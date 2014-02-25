//
//  UAEC2VPC.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2VPC.h"
#import "UAEC2Tag.h"

@implementation UAEC2VPC

@synthesize vpcID=_vpcID, state=_state, cidrBlock=_cidrBlock, dhcpOptionsID=_dhcpOptionsID, tags=_tags, instanceTenancy=_instanceTenancy, isDefault=_isDefault;

+ (NSString *)XPathPrefix
{
    return @"./";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Model XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"vpcID": @"ec2:vpcId",
        @"state": @"ec2:state",
        @"cidrBlock": @"ec2:cidrBlock",
        @"dhcpOptionsID": @"ec2:dhcpOptionsId",
        @"tags": @"ec2:tagSet/ec2:item",
        @"instanceTenancy": @"ec2:instanceTenancy",
        @"isDefault": @"ec2:isDefault"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)stateQueryStringTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value)
    {
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"pending"])
		    return @(UAEC2VPCStatePending);
		if ([value isEqualToString:@"available"])
		    return @(UAEC2VPCStateAvailable);

		return @(UAEC2VPCStateUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAEC2VPCState castValue = (UAEC2VPCState)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAEC2VPCStatePending:
			    return @"pending";
			case UAEC2VPCStateAvailable:
			    return @"available";

			case UAEC2VPCStateUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)tagsQueryStringTransformer
{
	return [NSValueTransformer mtl_QueryStringArrayTransformerWithModelClass:[UAEC2Tag class]];
}

+ (NSValueTransformer *)instanceTenancyQueryStringTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value)
    {
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"default"])
		    return @(UAEC2InstanceTenancyDefault);
		if ([value isEqualToString:@"dedicated"])
		    return @(UAEC2InstanceTenancyDedicated);

		return @(UAEC2InstanceTenancyUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAEC2InstanceTenancy castValue = (UAEC2InstanceTenancy)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAEC2InstanceTenancyDefault:
			    return @"default";
			case UAEC2InstanceTenancyDedicated:
			    return @"dedicated";

			case UAEC2InstanceTenancyUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)stateXMLTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSArray *nodes)
    {
		if (nodes == nil || [nodes count] == 0)
			return @(UAEC2VPCStateUnknown);

		NSString *value = [((DDXMLElement *)nodes.firstObject) stringValue];
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"pending"])
		    return @(UAEC2VPCStatePending);
		if ([value isEqualToString:@"available"])
		    return @(UAEC2VPCStateAvailable);

		return @(UAEC2VPCStateUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAEC2VPCState castValue = (UAEC2VPCState)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAEC2VPCStatePending:
			    return @"pending";
			case UAEC2VPCStateAvailable:
			    return @"available";

			case UAEC2VPCStateUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)tagsXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAEC2Tag class]];
}

+ (NSValueTransformer *)instanceTenancyXMLTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSArray *nodes)
    {
		if (nodes == nil || [nodes count] == 0)
			return @(UAEC2InstanceTenancyUnknown);

		NSString *value = [((DDXMLElement *)nodes.firstObject) stringValue];
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"default"])
		    return @(UAEC2InstanceTenancyDefault);
		if ([value isEqualToString:@"dedicated"])
		    return @(UAEC2InstanceTenancyDedicated);

		return @(UAEC2InstanceTenancyUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAEC2InstanceTenancy castValue = (UAEC2InstanceTenancy)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAEC2InstanceTenancyDefault:
			    return @"default";
			case UAEC2InstanceTenancyDedicated:
			    return @"dedicated";

			case UAEC2InstanceTenancyUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)isDefaultXMLTransformer
{
    return [MTLValueTransformer UA_XMLTransformerForBooleanString];
}

@end
