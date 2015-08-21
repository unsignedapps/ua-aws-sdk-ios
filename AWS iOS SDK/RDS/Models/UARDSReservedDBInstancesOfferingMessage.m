//
//  UARDSReservedDBInstancesOfferingMessage.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSReservedDBInstancesOfferingMessage.h"
#import "UAAWSAdditionalAccessors.h"
#import "UARDSReservedDBInstancesOffering.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UARDSReservedDBInstancesOfferingMessage

@synthesize marker=_marker, reservedDBInstancesOfferings=_reservedDBInstancesOfferings;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(reservedDBInstancesOfferingAtIndex:) propertyName:@"reservedDBInstancesOfferings"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addReservedDBInstancesOffering:) propertyName:@"reservedDBInstancesOfferings"];
	}
	return self;
}

+ (NSString *)XPathPrefix
{
    return @"./Rds:ReservedDBInstancesOfferingMessage/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UARDSModel XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"marker": @"Rds:Marker",
        @"reservedDBInstancesOfferings": @"Rds:ReservedDBInstancesOfferings/Rds:ReservedDBInstancesOffering"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)reservedDBInstancesOfferingsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UARDSReservedDBInstancesOffering class]];
}

+ (NSValueTransformer *)reservedDBInstancesOfferingsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UARDSReservedDBInstancesOffering class]];
}

@end

#pragma clang diagnostic pop