//
//  UAEC2ReservedInstancesListing.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2ReservedInstancesListing.h"
#import "UAEC2InstanceCount.h"
#import "UAEC2PriceSchedule.h"
#import "UAEC2Tag.h"

@implementation UAEC2ReservedInstancesListing

@synthesize reservedInstancesListingID=_reservedInstancesListingID, reservedInstancesID=_reservedInstancesID, createDate=_createDate, updateDate=_updateDate, status=_status, statusMessage=_statusMessage, instanceCounts=_instanceCounts, priceSchedules=_priceSchedules, tags=_tags, clientToken=_clientToken;

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
        @"reservedInstancesListingID": @"ec2:reservedInstancesListingId",
        @"reservedInstancesID": @"ec2:reservedInstancesId",
        @"createDate": @"ec2:createDate",
        @"updateDate": @"ec2:updateDate",
        @"status": @"ec2:status",
        @"statusMessage": @"ec2:statusMessage",
        @"instanceCounts": @"ec2:instanceCounts/ec2:item",
        @"priceSchedules": @"ec2:priceSchedules/ec2:item",
        @"tags": @"ec2:tagSet/ec2:item",
        @"clientToken": @"ec2:clientToken"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)createDateQueryStringTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)updateDateQueryStringTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)statusQueryStringTransformer
{
    return [UAMTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value)
    {
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"active"])
		    return @(UAEC2ReservedInstancesListingStateActive);
		if ([value isEqualToString:@"pending"])
		    return @(UAEC2ReservedInstancesListingStatePending);
		if ([value isEqualToString:@"cancelled"])
		    return @(UAEC2ReservedInstancesListingStateCancelled);
		if ([value isEqualToString:@"closed"])
		    return @(UAEC2ReservedInstancesListingStateClosed);

		return @(UAEC2ReservedInstancesListingStateUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAEC2ReservedInstancesListingState castValue = (UAEC2ReservedInstancesListingState)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAEC2ReservedInstancesListingStateActive:
			    return @"active";
			case UAEC2ReservedInstancesListingStatePending:
			    return @"pending";
			case UAEC2ReservedInstancesListingStateCancelled:
			    return @"cancelled";
			case UAEC2ReservedInstancesListingStateClosed:
			    return @"closed";

			case UAEC2ReservedInstancesListingStateUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)instanceCountsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2InstanceCount class]];
}

+ (NSValueTransformer *)priceSchedulesQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2PriceSchedule class]];
}

+ (NSValueTransformer *)tagsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2Tag class]];
}

+ (NSValueTransformer *)createDateXMLTransformer
{
    return [NSValueTransformer UAMTL_XMLTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)updateDateXMLTransformer
{
    return [NSValueTransformer UAMTL_XMLTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)statusXMLTransformer
{
    return [UAMTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSArray *nodes)
    {
		if (nodes == nil || [nodes count] == 0)
			return @(UAEC2ReservedInstancesListingStateUnknown);

		NSString *value = [((UADDXMLElement *)nodes.firstObject) stringValue];
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"active"])
		    return @(UAEC2ReservedInstancesListingStateActive);
		if ([value isEqualToString:@"pending"])
		    return @(UAEC2ReservedInstancesListingStatePending);
		if ([value isEqualToString:@"cancelled"])
		    return @(UAEC2ReservedInstancesListingStateCancelled);
		if ([value isEqualToString:@"closed"])
		    return @(UAEC2ReservedInstancesListingStateClosed);

		return @(UAEC2ReservedInstancesListingStateUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAEC2ReservedInstancesListingState castValue = (UAEC2ReservedInstancesListingState)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAEC2ReservedInstancesListingStateActive:
			    return @"active";
			case UAEC2ReservedInstancesListingStatePending:
			    return @"pending";
			case UAEC2ReservedInstancesListingStateCancelled:
			    return @"cancelled";
			case UAEC2ReservedInstancesListingStateClosed:
			    return @"closed";

			case UAEC2ReservedInstancesListingStateUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)instanceCountsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2InstanceCount class]];
}

+ (NSValueTransformer *)priceSchedulesXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2PriceSchedule class]];
}

+ (NSValueTransformer *)tagsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2Tag class]];
}

@end
