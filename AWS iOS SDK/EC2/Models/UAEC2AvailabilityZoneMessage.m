//
//  UAEC2AvailabilityZoneMessage.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2AvailabilityZoneMessage.h"

@implementation UAEC2AvailabilityZoneMessage

@synthesize message=_message;

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
        @"message": @"ec2:message"
    }];
    return [keyPaths copy];
}

@end
