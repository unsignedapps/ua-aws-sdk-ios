//
//  UARDSOrderableDBInstanceOptionsMessage.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSOrderableDBInstanceOptionsMessage.h"
#import "UAAWSAdditionalAccessors.h"
#import "UARDSOrderableDBInstanceOption.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UARDSOrderableDBInstanceOptionsMessage

@synthesize orderableDBInstanceOptions=_orderableDBInstanceOptions, marker=_marker;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(orderableDBInstanceOptionAtIndex:) propertyName:@"orderableDBInstanceOptions"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addOrderableDBInstanceOption:) propertyName:@"orderableDBInstanceOptions"];
	}
	return self;
}

+ (NSString *)XPathPrefix
{
    return @"./Rds:OrderableDBInstanceOptionsMessage/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UARDSModel XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"orderableDBInstanceOptions": @"Rds:OrderableDBInstanceOptions/Rds:OrderableDBInstanceOption",
        @"marker": @"Rds:Marker"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)orderableDBInstanceOptionsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UARDSOrderableDBInstanceOption class]];
}

+ (NSValueTransformer *)orderableDBInstanceOptionsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UARDSOrderableDBInstanceOption class]];
}

@end

#pragma clang diagnostic pop