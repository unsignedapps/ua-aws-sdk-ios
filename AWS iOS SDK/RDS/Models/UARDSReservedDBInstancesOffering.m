//
//  UARDSReservedDBInstancesOffering.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSReservedDBInstancesOffering.h"
#import "UAAWSAdditionalAccessors.h"
#import "UARDSRecurringCharge.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UARDSReservedDBInstancesOffering

@synthesize reservedDBInstancesOfferingID=_reservedDBInstancesOfferingID, dBInstanceClass=_dBInstanceClass, duration=_duration, fixedPrice=_fixedPrice, usagePrice=_usagePrice, currencyCode=_currencyCode, productDescription=_productDescription, offeringType=_offeringType, multiAZ=_multiAZ, recurringCharges=_recurringCharges;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(recurringChargeAtIndex:) propertyName:@"recurringCharges"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addRecurringCharge:) propertyName:@"recurringCharges"];
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
        @"reservedDBInstancesOfferingID": @"Rds:ReservedDBInstancesOfferingId",
        @"dBInstanceClass": @"Rds:DBInstanceClass",
        @"duration": @"Rds:Duration",
        @"fixedPrice": @"Rds:FixedPrice",
        @"usagePrice": @"Rds:UsagePrice",
        @"currencyCode": @"Rds:CurrencyCode",
        @"productDescription": @"Rds:ProductDescription",
        @"offeringType": @"Rds:OfferingType",
        @"multiAZ": @"Rds:MultiAZ",
        @"recurringCharges": @"Rds:RecurringCharges/Rds:RecurringCharge"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)offeringTypeQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UARDSReservedDBInstanceOfferingTypePartialUpfront), @(UARDSReservedDBInstanceOfferingTypeAllUpfront), @(UARDSReservedDBInstanceOfferingTypeNoUpfront) ]
                                               stringValues:@[ @"Partial Upfront", @"All Upfront", @" No Upfront" ]
                                               unknownValue:@(UARDSReservedDBInstanceOfferingTypeUnknown)];
}

+ (NSValueTransformer *)recurringChargesQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UARDSRecurringCharge class]];
}

+ (NSValueTransformer *)durationXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)fixedPriceXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)usagePriceXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)offeringTypeXMLTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UARDSReservedDBInstanceOfferingTypePartialUpfront), @(UARDSReservedDBInstanceOfferingTypeAllUpfront), @(UARDSReservedDBInstanceOfferingTypeNoUpfront) ]
                                               stringValues:@[ @"Partial Upfront", @"All Upfront", @" No Upfront" ]
                                               unknownValue:@(UARDSReservedDBInstanceOfferingTypeUnknown)];
}

+ (NSValueTransformer *)multiAZXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

+ (NSValueTransformer *)recurringChargesXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UARDSRecurringCharge class]];
}

@end

#pragma clang diagnostic pop