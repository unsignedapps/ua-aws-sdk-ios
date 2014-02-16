//
//  UAASSuspendedProcess.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASSuspendedProcess.h"

@implementation UAASSuspendedProcess

@synthesize processName=_processName, suspensionReason=_suspensionReason;

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
        @"processName": @"AutoScaling:ProcessName",
        @"suspensionReason": @"AutoScaling:SuspensionReason"
    }];
    return [keyPaths copy];
}

@end
