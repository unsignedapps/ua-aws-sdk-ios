//
//  UARDSVPCSecurityGroup.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSVPCSecurityGroup.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UARDSVPCSecurityGroup

@synthesize vpcSecurityGroupID=_vpcSecurityGroupID, status=_status;

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
        @"vpcSecurityGroupID": @"Rds:VpcSecurityGroupId",
        @"status": @"Rds:Status"
    }];
    return [keyPaths copy];
}

@end

#pragma clang diagnostic pop