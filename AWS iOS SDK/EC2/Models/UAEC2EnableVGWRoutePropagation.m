//
//  UAEC2EnableVGWRoutePropagation.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2EnableVGWRoutePropagation.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

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

#pragma clang diagnostic pop