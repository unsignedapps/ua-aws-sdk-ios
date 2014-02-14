//
//  UAEC2EnableVGWRoutePropagation.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2EnableVGWRoutePropagation.h"

@implementation UAEC2EnableVGWRoutePropagation

@synthesize requestID=_requestID;

+ (NSString *)XPathPrefix
{
    return @"./ec2:EnableVgwRoutePropagation/";
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
