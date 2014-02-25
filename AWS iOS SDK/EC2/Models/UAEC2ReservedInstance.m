//
//  UAEC2ReservedInstance.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2ReservedInstance.h"
#import "UAEC2Tag.h"
#import "UAEC2RecurringCharge.h"

@implementation UAEC2ReservedInstance

@synthesize reservedInstancesID=_reservedInstancesID, instanceType=_instanceType, availabilityZone=_availabilityZone, start=_start, end=_end, duration=_duration, usagePrice=_usagePrice, fixedPrice=_fixedPrice, instanceCount=_instanceCount, productDescription=_productDescription, state=_state, tags=_tags, instanceTenancy=_instanceTenancy, currencyCode=_currencyCode, offeringType=_offeringType, recurringCharges=_recurringCharges;

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
        @"reservedInstancesID": @"ec2:reservedInstancesId",
        @"instanceType": @"ec2:instanceType",
        @"availabilityZone": @"ec2:availabilityZone",
        @"start": @"ec2:start",
        @"end": @"ec2:end",
        @"duration": @"ec2:duration",
        @"usagePrice": @"ec2:usagePrice",
        @"fixedPrice": @"ec2:fixedPrice",
        @"instanceCount": @"ec2:instanceCount",
        @"productDescription": @"ec2:productDescription",
        @"state": @"ec2:status",
        @"tags": @"ec2:tagSet/ec2:item",
        @"instanceTenancy": @"ec2:instanceTenancy",
        @"currencyCode": @"ec2:currencyCode",
        @"offeringType": @"ec2:offeringType",
        @"recurringCharges": @"ec2:recurringCharges/ec2:item"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)stateQueryStringTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value)
    {
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"active"])
		    return @(UAEC2ReservedInstanceListingStateActive);
		if ([value isEqualToString:@"pending"])
		    return @(UAEC2ReservedInstanceListingStatePending);
		if ([value isEqualToString:@"cancelled"])
		    return @(UAEC2ReservedInstanceListingStateCancelled);
		if ([value isEqualToString:@"closed"])
		    return @(UAEC2ReservedInstanceListingStateClosed);

		return @(UAEC2ReservedInstanceListingStateUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAEC2ReservedInstanceListingState castValue = (UAEC2ReservedInstanceListingState)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAEC2ReservedInstanceListingStateActive:
			    return @"active";
			case UAEC2ReservedInstanceListingStatePending:
			    return @"pending";
			case UAEC2ReservedInstanceListingStateCancelled:
			    return @"cancelled";
			case UAEC2ReservedInstanceListingStateClosed:
			    return @"closed";

			case UAEC2ReservedInstanceListingStateUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)tagsQueryStringTransformer
{
	return [NSValueTransformer mtl_QueryStringArrayTransformerWithModelClass:[UAEC2Tag class]];
}

+ (NSValueTransformer *)recurringChargesQueryStringTransformer
{
	return [NSValueTransformer mtl_QueryStringArrayTransformerWithModelClass:[UAEC2RecurringCharge class]];
}

+ (NSValueTransformer *)durationXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)usagePriceXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)fixedPriceXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)instanceCountXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)stateXMLTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSArray *nodes)
    {
		if (nodes == nil || [nodes count] == 0)
			return @(UAEC2ReservedInstanceListingStateUnknown);

		NSString *value = [((DDXMLElement *)nodes.firstObject) stringValue];
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"active"])
		    return @(UAEC2ReservedInstanceListingStateActive);
		if ([value isEqualToString:@"pending"])
		    return @(UAEC2ReservedInstanceListingStatePending);
		if ([value isEqualToString:@"cancelled"])
		    return @(UAEC2ReservedInstanceListingStateCancelled);
		if ([value isEqualToString:@"closed"])
		    return @(UAEC2ReservedInstanceListingStateClosed);

		return @(UAEC2ReservedInstanceListingStateUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAEC2ReservedInstanceListingState castValue = (UAEC2ReservedInstanceListingState)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAEC2ReservedInstanceListingStateActive:
			    return @"active";
			case UAEC2ReservedInstanceListingStatePending:
			    return @"pending";
			case UAEC2ReservedInstanceListingStateCancelled:
			    return @"cancelled";
			case UAEC2ReservedInstanceListingStateClosed:
			    return @"closed";

			case UAEC2ReservedInstanceListingStateUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)tagsXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAEC2Tag class]];
}

+ (NSValueTransformer *)recurringChargesXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAEC2RecurringCharge class]];
}

@end
