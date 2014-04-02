//
//  UAEC2ReservedInstancesOffering.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2ReservedInstancesOffering.h"
#import "UAEC2RecurringCharge.h"
#import "UAEC2PricingDetail.h"

@implementation UAEC2ReservedInstancesOffering

@synthesize reservedInstancesOfferingID=_reservedInstancesOfferingID, instanceType=_instanceType, availabilityZone=_availabilityZone, duration=_duration, usagePrice=_usagePrice, fixedPrice=_fixedPrice, productDescription=_productDescription, instanceTenancy=_instanceTenancy, currencyCode=_currencyCode, offeringType=_offeringType, recurringCharges=_recurringCharges, marketplace=_marketplace, pricingDetails=_pricingDetails;

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
        @"reservedInstancesOfferingID": @"ec2:reservedInstancesOfferingId",
        @"instanceType": @"ec2:instanceType",
        @"availabilityZone": @"ec2:availabilityZone",
        @"duration": @"ec2:duration",
        @"usagePrice": @"ec2:usagePrice",
        @"fixedPrice": @"ec2:fixedPrice",
        @"productDescription": @"ec2:productDescription",
        @"instanceTenancy": @"ec2:instanceTenancy",
        @"currencyCode": @"ec2:currencyCode",
        @"offeringType": @"ec2:offeringType",
        @"recurringCharges": @"ec2:recurringCharges/ec2:item",
        @"marketplace": @"ec2:marketplace",
        @"pricingDetails": @"ec2:pricingDetailsSet/ec2:item"
    }];
    return [keyPaths copy];
}

- (UAEC2RecurringCharge *)recurringChargeAtIndex:(NSUInteger)index
{
    if (self.recurringCharges == nil || index >= ([self.recurringCharges count]-1))
        return nil;

    return [self.recurringCharges objectAtIndex:index];
}

- (UAEC2PricingDetail *)pricingDetailAtIndex:(NSUInteger)index
{
    if (self.pricingDetails == nil || index >= ([self.pricingDetails count]-1))
        return nil;

    return [self.pricingDetails objectAtIndex:index];
}

+ (NSValueTransformer *)recurringChargesQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2RecurringCharge class]];
}

+ (NSValueTransformer *)pricingDetailsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2PricingDetail class]];
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

+ (NSValueTransformer *)recurringChargesXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2RecurringCharge class]];
}

+ (NSValueTransformer *)marketplaceXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

+ (NSValueTransformer *)pricingDetailsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2PricingDetail class]];
}

@end
