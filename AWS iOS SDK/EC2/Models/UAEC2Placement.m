//
//  UAEC2Placement.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Placement.h"

@implementation UAEC2Placement

@synthesize availabilityZone=_availabilityZone, groupName=_groupName, tenancy=_tenancy;

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Model queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"availabilityZone": @"availabilityZone",
        @"groupName": @"groupName",
        @"tenancy": @"tenancy"
    }];
    return [keyPaths copy];
}

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
        @"availabilityZone": @"ec2:availabilityZone",
        @"groupName": @"ec2:groupName",
        @"tenancy": @"ec2:tenancy"
    }];
    return [keyPaths copy];
}

@end
