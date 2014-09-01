//
//  UAEC2ReservedInstancesOffering.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2ReservedInstancesOffering.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2RecurringCharge.h"
#import "UAEC2PricingDetail.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2ReservedInstancesOffering

@synthesize reservedInstancesOfferingID=_reservedInstancesOfferingID, instanceType=_instanceType, availabilityZone=_availabilityZone, duration=_duration, usagePrice=_usagePrice, fixedPrice=_fixedPrice, productDescription=_productDescription, instanceTenancy=_instanceTenancy, currencyCode=_currencyCode, offeringType=_offeringType, recurringCharges=_recurringCharges, marketplace=_marketplace, pricingDetails=_pricingDetails;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(recurringChargeAtIndex:) propertyName:@"recurringCharges"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(pricingDetailAtIndex:) propertyName:@"pricingDetails"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addRecurringCharge:) propertyName:@"recurringCharges"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addPricingDetail:) propertyName:@"pricingDetails"];
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

+ (NSValueTransformer *)productDescriptionQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2ReservedInstanceOfferingProductDescriptionLinuxUNIX), @(UAEC2ReservedInstanceOfferingProductDescriptionLinuxUNIXAmazonVPC), @(UAEC2ReservedInstanceOfferingProductDescriptionSUSELinux), @(UAEC2ReservedInstanceOfferingProductDescriptionSUSELinuxAmazonVPC), @(UAEC2ReservedInstanceOfferingProductDescriptionRedHatEnterpriseLinux), @(UAEC2ReservedInstanceOfferingProductDescriptionRedHatEnterpriseLinuxAmazonVPC), @(UAEC2ReservedInstanceOfferingProductDescriptionWindows), @(UAEC2ReservedInstanceOfferingProductDescriptionWindowsAmazonVPC), @(UAEC2ReservedInstanceOfferingProductDescriptionWindowswithSQLServerStandard), @(UAEC2ReservedInstanceOfferingProductDescriptionWindowswithSQLServerStandardAmazonVPC), @(UAEC2ReservedInstanceOfferingProductDescriptionWindowswithSQLServerWeb), @(UAEC2ReservedInstanceOfferingProductDescriptionWindowswithSQLServerWebAmazonVPC) ]
                                               stringValues:@[ @"Linux/UNIX", @"Linux/UNIX (Amazon VPC)", @"SUSE Linux", @"SUSE Linux (Amazon VPC)", @"Red Hat Enterprise Linux", @"Red Hat Enterprise Linux (Amazon VPC)", @"Windows", @"Windows (Amazon VPC)", @"Windows with SQL Server Standard", @"Windows with SQL Server Standard (Amazon VPC)", @"Windows with SQL Server Web", @"Windows with SQL Server Web (Amazon VPC)" ]
                                               unknownValue:@(UAEC2ReservedInstanceOfferingProductDescriptionUnknown)];
}

+ (NSValueTransformer *)instanceTenancyQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2InstanceTenancyDefault), @(UAEC2InstanceTenancyDedicated) ]
                                               stringValues:@[ @"default", @"dedicated" ]
                                               unknownValue:@(UAEC2InstanceTenancyUnknown)];
}

+ (NSValueTransformer *)offeringTypeQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2ReservedInstanceOfferingTypeHeavyUtilization), @(UAEC2ReservedInstanceOfferingTypeMediumUtilization), @(UAEC2ReservedInstanceOfferingTypeLightUtilization) ]
                                               stringValues:@[ @"Heavy Utilization", @"Medium Utilization", @"Light Utilization" ]
                                               unknownValue:@(UAEC2ReservedInstanceOfferingTypeUnknown)];
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

+ (NSValueTransformer *)productDescriptionXMLTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2ReservedInstanceOfferingProductDescriptionLinuxUNIX), @(UAEC2ReservedInstanceOfferingProductDescriptionLinuxUNIXAmazonVPC), @(UAEC2ReservedInstanceOfferingProductDescriptionSUSELinux), @(UAEC2ReservedInstanceOfferingProductDescriptionSUSELinuxAmazonVPC), @(UAEC2ReservedInstanceOfferingProductDescriptionRedHatEnterpriseLinux), @(UAEC2ReservedInstanceOfferingProductDescriptionRedHatEnterpriseLinuxAmazonVPC), @(UAEC2ReservedInstanceOfferingProductDescriptionWindows), @(UAEC2ReservedInstanceOfferingProductDescriptionWindowsAmazonVPC), @(UAEC2ReservedInstanceOfferingProductDescriptionWindowswithSQLServerStandard), @(UAEC2ReservedInstanceOfferingProductDescriptionWindowswithSQLServerStandardAmazonVPC), @(UAEC2ReservedInstanceOfferingProductDescriptionWindowswithSQLServerWeb), @(UAEC2ReservedInstanceOfferingProductDescriptionWindowswithSQLServerWebAmazonVPC) ]
                                               stringValues:@[ @"Linux/UNIX", @"Linux/UNIX (Amazon VPC)", @"SUSE Linux", @"SUSE Linux (Amazon VPC)", @"Red Hat Enterprise Linux", @"Red Hat Enterprise Linux (Amazon VPC)", @"Windows", @"Windows (Amazon VPC)", @"Windows with SQL Server Standard", @"Windows with SQL Server Standard (Amazon VPC)", @"Windows with SQL Server Web", @"Windows with SQL Server Web (Amazon VPC)" ]
                                               unknownValue:@(UAEC2ReservedInstanceOfferingProductDescriptionUnknown)];
}

+ (NSValueTransformer *)instanceTenancyXMLTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2InstanceTenancyDefault), @(UAEC2InstanceTenancyDedicated) ]
                                               stringValues:@[ @"default", @"dedicated" ]
                                               unknownValue:@(UAEC2InstanceTenancyUnknown)];
}

+ (NSValueTransformer *)offeringTypeXMLTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2ReservedInstanceOfferingTypeHeavyUtilization), @(UAEC2ReservedInstanceOfferingTypeMediumUtilization), @(UAEC2ReservedInstanceOfferingTypeLightUtilization) ]
                                               stringValues:@[ @"Heavy Utilization", @"Medium Utilization", @"Light Utilization" ]
                                               unknownValue:@(UAEC2ReservedInstanceOfferingTypeUnknown)];
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

#pragma clang diagnostic pop