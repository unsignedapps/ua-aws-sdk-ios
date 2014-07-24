//
//  UAEC2AssignPrivateIPAddressesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2AssignPrivateIPAddressesResponse.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2AssignPrivateIPAddressesResponse

@synthesize requestID=_requestID;

+ (NSString *)XPathPrefix
{
    return @"./ec2:AssignPrivateIpAddressesResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"requestID": @"ec2:requestId"
    }];
    return [keyPaths copy];
}

@end

#pragma clang diagnostic pop