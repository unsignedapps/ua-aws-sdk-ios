//
//  UARDSDBInstanceResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSDBInstanceResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UARDSDBInstance.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UARDSDBInstanceResponse

@synthesize dBInstance=_dBInstance;

+ (NSString *)XPathPrefix
{
    return @"./Rds:DBInstanceResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UARDSResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"dBInstance": @"Rds:DBInstance"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)dBInstanceXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UARDSDBInstance class]];
}

@end

#pragma clang diagnostic pop