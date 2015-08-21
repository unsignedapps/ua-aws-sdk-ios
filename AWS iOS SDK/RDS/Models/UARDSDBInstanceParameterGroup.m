//
//  UARDSDBInstanceParameterGroup.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSDBInstanceParameterGroup.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UARDSDBInstanceParameterGroup

@synthesize dBParameterGroupName=_dBParameterGroupName, parameterApplyStatus=_parameterApplyStatus;

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
        @"parameterApplyStatus": @"Rds:ParameterApplyStatus"
    }];
    return [keyPaths copy];
}

@end

#pragma clang diagnostic pop