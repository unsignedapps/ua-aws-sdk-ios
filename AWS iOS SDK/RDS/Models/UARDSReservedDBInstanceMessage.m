//
//  UARDSReservedDBInstanceMessage.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSReservedDBInstanceMessage.h"
#import "UAAWSAdditionalAccessors.h"
#import "UARDSReservedDBInstance.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UARDSReservedDBInstanceMessage

@synthesize marker=_marker, reservedDBInstances=_reservedDBInstances;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(reservedDBInstanceAtIndex:) propertyName:@"reservedDBInstances"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addReservedDBInstance:) propertyName:@"reservedDBInstances"];
	}
	return self;
}

+ (NSString *)XPathPrefix
{
    return @"./Rds:ReservedDBInstanceMessage/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UARDSModel XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"marker": @"Rds:Marker",
        @"reservedDBInstances": @"Rds:ReservedDBInstances/Rds:ReservedDBInstance"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)reservedDBInstancesQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UARDSReservedDBInstance class]];
}

+ (NSValueTransformer *)reservedDBInstancesXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UARDSReservedDBInstance class]];
}

@end

#pragma clang diagnostic pop