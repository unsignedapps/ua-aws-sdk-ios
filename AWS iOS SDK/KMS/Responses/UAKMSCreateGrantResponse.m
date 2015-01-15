//
//  UAKMSCreateGrantResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAKMSCreateGrantResponse.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAKMSCreateGrantResponse

@synthesize grantToken=_grantToken, grantID=_grantID;

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAKMSResponse JSONKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"grantToken": @"GrantToken",
        @"grantID": @"GrantId"
    }];
    return [keyPaths copy];
}

@end

#pragma clang diagnostic pop