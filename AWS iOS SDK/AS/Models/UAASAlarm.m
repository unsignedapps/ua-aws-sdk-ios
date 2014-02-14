//
//  UAASAlarm.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAASAlarm.h"

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
