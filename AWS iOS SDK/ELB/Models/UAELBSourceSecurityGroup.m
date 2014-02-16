//
//  UAELBSourceSecurityGroup.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBSourceSecurityGroup.h"

@implementation UAELBSourceSecurityGroup

@synthesize ownerAlias=_ownerAlias, groupName=_groupName;

+ (NSString *)XPathPrefix
{
    return @"./";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAELBModel XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"ownerAlias": @"ElasticLoadBalancing:OwnerAlias",
        @"groupName": @"ElasticLoadBalancing:GroupName"
    }];
    return [keyPaths copy];
}

@end
