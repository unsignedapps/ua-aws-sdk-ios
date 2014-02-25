//
//  UAEC2Subnet.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Subnet.h"
#import "UAEC2Tag.h"

@implementation UAEC2Subnet

@synthesize subnetID=_subnetID, state=_state, vpcID=_vpcID, cidrBlock=_cidrBlock, availableIPAddressCount=_availableIPAddressCount, availabilityZone=_availabilityZone, defaultForAz=_defaultForAz, mapPublicIPOnLaunch=_mapPublicIPOnLaunch, tags=_tags;

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
        @"subnetID": @"ec2:subnetId",
        @"state": @"ec2:state",
        @"vpcID": @"ec2:vpcId",
        @"cidrBlock": @"ec2:cidrBlock",
        @"availableIPAddressCount": @"ec2:availableIpAddressCount",
        @"availabilityZone": @"ec2:availabilityZone",
        @"defaultForAz": @"ec2:defaultForAz",
        @"mapPublicIPOnLaunch": @"ec2:mapPublicIpOnLaunch",
        @"tags": @"ec2:tagSet/ec2:item"
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
		    return @(UAEC2SubnetStatePending);
		if ([value isEqualToString:@"available"])
		    return @(UAEC2SubnetStateAvailable);

		return @(UAEC2SubnetStateUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAEC2SubnetState castValue = (UAEC2SubnetState)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAEC2SubnetStatePending:
			    return @"pending";
			case UAEC2SubnetStateAvailable:
			    return @"available";

			case UAEC2SubnetStateUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)tagsQueryStringTransformer
{
	return [NSValueTransformer mtl_QueryStringArrayTransformerWithModelClass:[UAEC2Tag class]];
}

+ (NSValueTransformer *)stateXMLTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSArray *nodes)
    {
		if (nodes == nil || [nodes count] == 0)
			return @(UAEC2SubnetStateUnknown);

		NSString *value = [((DDXMLElement *)nodes.firstObject) stringValue];
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"pending"])
		    return @(UAEC2SubnetStatePending);
		if ([value isEqualToString:@"available"])
		    return @(UAEC2SubnetStateAvailable);

		return @(UAEC2SubnetStateUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAEC2SubnetState castValue = (UAEC2SubnetState)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAEC2SubnetStatePending:
			    return @"pending";
			case UAEC2SubnetStateAvailable:
			    return @"available";

			case UAEC2SubnetStateUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)availableIPAddressCountXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)defaultForAzXMLTransformer
{
    return [MTLValueTransformer UA_XMLTransformerForBooleanString];
}

+ (NSValueTransformer *)mapPublicIPOnLaunchXMLTransformer
{
    return [MTLValueTransformer UA_XMLTransformerForBooleanString];
}

+ (NSValueTransformer *)tagsXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAEC2Tag class]];
}

@end
