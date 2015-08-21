//
//  UARDSSubnet.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSSubnet.h"
#import "UAAWSAdditionalAccessors.h"
#import "UARDSSubnetAvailabilityZone.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UARDSSubnet

@synthesize subnetIdentifier=_subnetIdentifier, subnetAvailabilityZone=_subnetAvailabilityZone, subnetStatus=_subnetStatus;

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
        @"subnetIdentifier": @"Rds:SubnetIdentifier",
        @"subnetAvailabilityZone": @"Rds:SubnetAvailabilityZone",
        @"subnetStatus": @"Rds:SubnetStatus"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)subnetAvailabilityZoneQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UARDSSubnetAvailabilityZone class]];
}

+ (NSValueTransformer *)subnetAvailabilityZoneXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UARDSSubnetAvailabilityZone class]];
}

@end

#pragma clang diagnostic pop