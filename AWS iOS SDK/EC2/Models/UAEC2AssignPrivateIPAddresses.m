//
//  UAEC2AssignPrivateIPAddresses.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2AssignPrivateIPAddresses.h"

@implementation UAEC2AssignPrivateIPAddresses

@synthesize requestID=_requestID;

+ (NSString *)XPathPrefix
{
    return @"./ec2:AssignPrivateIpAddresses/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Model XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"requestID": @"ec2:requestId"
    }];
    return [keyPaths copy];
}

@end
