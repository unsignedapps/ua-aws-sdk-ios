//
//  UAEC2ReservedInstance.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2ReservedInstance.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2Tag.h"
#import "UAEC2RecurringCharge.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2ReservedInstance

@synthesize reservedInstancesID=_reservedInstancesID, instanceType=_instanceType, availabilityZone=_availabilityZone, start=_start, end=_end, duration=_duration, usagePrice=_usagePrice, fixedPrice=_fixedPrice, instanceCount=_instanceCount, productDescription=_productDescription, state=_state, tags=_tags, instanceTenancy=_instanceTenancy, currencyCode=_currencyCode, offeringType=_offeringType, recurringCharges=_recurringCharges;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(tagAtIndex:) propertyName:@"tags"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(recurringChargeAtIndex:) propertyName:@"recurringCharges"];
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
        @"state": @"ec2:state",
        @"tags": @"ec2:tagSet/ec2:item",
        @"instanceTenancy": @"ec2:instanceTenancy",
        @"currencyCode": @"ec2:currencyCode",
        @"offeringType": @"ec2:offeringType",
        @"recurringCharges": @"ec2:recurringCharges/ec2:item"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)startQueryStringTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)endQueryStringTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)stateQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2ReservedInstanceStatePaymentPending), @(UAEC2ReservedInstanceStateActive), @(UAEC2ReservedInstanceStatePaymentFailed), @(UAEC2ReservedInstanceStateRetired) ]
                                               stringValues:@[ @"payment-pending", @"active", @"payment-failed", @"retired" ]
                                               unknownValue:@(UAEC2ReservedInstanceStateUnknown)];
}

+ (NSValueTransformer *)tagsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2Tag class]];
}

+ (NSValueTransformer *)recurringChargesQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2RecurringCharge class]];
}

+ (NSValueTransformer *)startXMLTransformer
{
    return [NSValueTransformer UAMTL_XMLTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)endXMLTransformer
{
    return [NSValueTransformer UAMTL_XMLTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
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
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2ReservedInstanceStatePaymentPending), @(UAEC2ReservedInstanceStateActive), @(UAEC2ReservedInstanceStatePaymentFailed), @(UAEC2ReservedInstanceStateRetired) ]
                                               stringValues:@[ @"payment-pending", @"active", @"payment-failed", @"retired" ]
                                               unknownValue:@(UAEC2ReservedInstanceStateUnknown)];
}

+ (NSValueTransformer *)tagsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2Tag class]];
}

+ (NSValueTransformer *)recurringChargesXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2RecurringCharge class]];
}

@end

#pragma clang diagnostic pop