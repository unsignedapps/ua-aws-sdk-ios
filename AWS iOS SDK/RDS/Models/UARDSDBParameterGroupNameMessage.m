//
//  UARDSDBParameterGroupNameMessage.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSDBParameterGroupNameMessage.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UARDSDBParameterGroupNameMessage

@synthesize dBParameterGroupName=_dBParameterGroupName;

+ (NSString *)XPathPrefix
{
    return @"./Rds:DBParameterGroupNameMessage/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UARDSModel XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"dBParameterGroupName": @"Rds:DBParameterGroupName"
    }];
    return [keyPaths copy];
}

@end

#pragma clang diagnostic pop