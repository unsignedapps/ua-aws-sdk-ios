//
//  UAEC2RequesterVPCInfo.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2RequesterVPCInfo.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2RequesterVPCInfo

@synthesize cidrBlock=_cidrBlock, ownerID=_ownerID, vpcID=_vpcID;

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
        @"cidrBlock": @"ec2:cidrBlock",
        @"ownerID": @"ec2:ownerId",
        @"vpcID": @"ec2:vpcId"
    }];
    return [keyPaths copy];
}

@end

#pragma clang diagnostic pop