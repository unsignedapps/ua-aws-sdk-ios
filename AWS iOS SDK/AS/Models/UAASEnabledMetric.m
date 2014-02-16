//
//  UAASEnabledMetric.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASEnabledMetric.h"

@implementation UAASEnabledMetric

@synthesize metric=_metric, granularity=_granularity;

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
        @"metric": @"AutoScaling:Metric",
        @"granularity": @"AutoScaling:Granularity"
    }];
    return [keyPaths copy];
}

@end
