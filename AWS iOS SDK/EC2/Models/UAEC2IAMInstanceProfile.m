//
//  UAEC2IAMInstanceProfile.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2IAMInstanceProfile.h"

@implementation UAEC2IAMInstanceProfile

@synthesize arn=_arn, id=_id;

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
        @"arn": @"ec2:arn",
        @"id": @"ec2:id"
    }];
    return [keyPaths copy];
}

@end
