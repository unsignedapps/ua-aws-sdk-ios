//
//  UARDSDBParameterGroup.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSDBParameterGroup.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UARDSDBParameterGroup

@synthesize dBParameterGroupName=_dBParameterGroupName, dBParameterGroupFamily=_dBParameterGroupFamily, description=_description;

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
        @"dBParameterGroupName": @"Rds:DBParameterGroupName",
        @"dBParameterGroupFamily": @"Rds:DBParameterGroupFamily",
        @"description": @"Rds:Description"
    }];
    return [keyPaths copy];
}

@end

#pragma clang diagnostic pop