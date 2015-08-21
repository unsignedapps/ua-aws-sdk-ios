//
//  UARDSReservedDBInstanceResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSReservedDBInstanceResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UARDSReservedDBInstance.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UARDSReservedDBInstanceResponse

@synthesize reservedDBInstance=_reservedDBInstance;

+ (NSString *)XPathPrefix
{
    return @"./Rds:ReservedDBInstanceResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UARDSResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"reservedDBInstance": @"Rds:ReservedDBInstance"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)reservedDBInstanceXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UARDSReservedDBInstance class]];
}

@end

#pragma clang diagnostic pop