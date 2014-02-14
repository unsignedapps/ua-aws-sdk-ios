//
//  UAEC2PropagatingVGW.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2PropagatingVGW.h"

@implementation UAEC2PropagatingVGW

@synthesize gatewayID=_gatewayID;

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
        @"gatewayID": @"ec2:gatewayId"
    }];
    return [keyPaths copy];
}

@end
