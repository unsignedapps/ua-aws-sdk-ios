//
//  UAEC2AvailabilityZone.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2AvailabilityZone.h"
#import "UAEC2AvailabilityZoneMessage.h"

@implementation UAEC2AvailabilityZone

@synthesize zoneName=_zoneName, state=_state, regionName=_regionName, messages=_messages;

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
        @"zoneName": @"ec2:zoneName",
        @"state": @"ec2:zoneState",
        @"regionName": @"ec2:regionName",
        @"messages": @"ec2:messageSet/ec2:item"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)stateQueryStringTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value)
    {
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"available"])
		    return @(UAEC2AvailabilityZoneStateAvailable);
		if ([value isEqualToString:@"impaired"])
		    return @(UAEC2AvailabilityZoneStateImpaired);
		if ([value isEqualToString:@"unavailable"])
		    return @(UAEC2AvailabilityZoneStateUnavailable);

		return @(UAEC2AvailabilityZoneStateUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAEC2AvailabilityZoneState castValue = (UAEC2AvailabilityZoneState)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAEC2AvailabilityZoneStateAvailable:
			    return @"available";
			case UAEC2AvailabilityZoneStateImpaired:
			    return @"impaired";
			case UAEC2AvailabilityZoneStateUnavailable:
			    return @"unavailable";

			case UAEC2AvailabilityZoneStateUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)messagesQueryStringTransformer
{
	return [NSValueTransformer mtl_QueryStringArrayTransformerWithModelClass:[UAEC2AvailabilityZoneMessage class]];
}

+ (NSValueTransformer *)stateXMLTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSArray *nodes)
    {
		if (nodes == nil || [nodes count] == 0)
			return @(UAEC2AvailabilityZoneStateUnknown);

		NSString *value = [((DDXMLElement *)nodes.firstObject) stringValue];
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"available"])
		    return @(UAEC2AvailabilityZoneStateAvailable);
		if ([value isEqualToString:@"impaired"])
		    return @(UAEC2AvailabilityZoneStateImpaired);
		if ([value isEqualToString:@"unavailable"])
		    return @(UAEC2AvailabilityZoneStateUnavailable);

		return @(UAEC2AvailabilityZoneStateUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAEC2AvailabilityZoneState castValue = (UAEC2AvailabilityZoneState)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAEC2AvailabilityZoneStateAvailable:
			    return @"available";
			case UAEC2AvailabilityZoneStateImpaired:
			    return @"impaired";
			case UAEC2AvailabilityZoneStateUnavailable:
			    return @"unavailable";

			case UAEC2AvailabilityZoneStateUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)messagesXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAEC2AvailabilityZoneMessage class]];
}

@end
