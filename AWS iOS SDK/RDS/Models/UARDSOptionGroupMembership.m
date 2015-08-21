//
//  UARDSOptionGroupMembership.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSOptionGroupMembership.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UARDSOptionGroupMembership

@synthesize optionGroupName=_optionGroupName, status=_status;

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
        @"optionGroupName": @"Rds:OptionGroupName",
        @"status": @"Rds:Status"
    }];
    return [keyPaths copy];
}

@end

#pragma clang diagnostic pop