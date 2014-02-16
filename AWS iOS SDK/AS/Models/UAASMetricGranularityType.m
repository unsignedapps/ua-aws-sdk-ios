//
//  UAASMetricGranularityType.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASMetricGranularityType.h"

@implementation UAASMetricGranularityType

@synthesize granularity=_granularity;

+ (NSString *)XPathPrefix
{
    return @"./";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAASModel XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"granularity": @"AutoScaling:Granularity"
    }];
    return [keyPaths copy];
}

@end
