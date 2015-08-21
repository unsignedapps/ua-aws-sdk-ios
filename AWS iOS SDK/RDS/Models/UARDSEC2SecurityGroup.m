//
//  UARDSEC2SecurityGroup.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSEC2SecurityGroup.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UARDSEC2SecurityGroup

@synthesize status=_status, eC2SecurityGroupName=_eC2SecurityGroupName, eC2SecurityGroupID=_eC2SecurityGroupID, eC2SecurityGroupOwnerID=_eC2SecurityGroupOwnerID;

+ (NSString *)XPathPrefix
{
    return @"./";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UARDSModel XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"status": @"Rds:Status",
        @"eC2SecurityGroupName": @"Rds:EC2SecurityGroupName",
        @"eC2SecurityGroupID": @"Rds:EC2SecurityGroupId",
        @"eC2SecurityGroupOwnerID": @"Rds:EC2SecurityGroupOwnerId"
    }];
    return [keyPaths copy];
}

@end

#pragma clang diagnostic pop