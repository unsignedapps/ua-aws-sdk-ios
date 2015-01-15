//
//  UAASSuspendedProcess.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAASSuspendedProcess.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

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

#pragma clang diagnostic pop