//
//  UAEC2VPNStaticRoute.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2VPNStaticRoute.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2VPNStaticRoute

@synthesize destinationCidrBlock=_destinationCidrBlock, source=_source, state=_state;

+ (NSString *)XPathPrefix
{
    return @"./";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Model XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"destinationCidrBlock": @"ec2:destinationCidrBlock",
        @"source": @"ec2:source",
        @"state": @"ec2:state"
    }];
    return [keyPaths copy];
}

@end

#pragma clang diagnostic pop