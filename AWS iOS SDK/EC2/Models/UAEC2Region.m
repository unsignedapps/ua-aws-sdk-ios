//
//  UAEC2Region.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Region.h"

@implementation UAEC2Region

@synthesize regionName=_regionName, endpoint=_endpoint;

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
        @"regionName": @"ec2:regionName",
        @"endpoint": @"ec2:regionEndpoint"
    }];
    return [keyPaths copy];
}

@end
