//
//  UAASAlarm.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAASAlarm.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAASAlarm

@synthesize alarmName=_alarmName, alarmARN=_alarmARN;

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
        @"alarmName": @"AutoScaling:AlarmName",
        @"alarmARN": @"AutoScaling:AlarmARN"
    }];
    return [keyPaths copy];
}

@end

#pragma clang diagnostic pop