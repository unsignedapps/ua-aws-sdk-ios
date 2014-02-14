//
//  UAEC2InstanceNetworkInterfaceAssociation.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2InstanceNetworkInterfaceAssociation.h"

@implementation UAEC2InstanceNetworkInterfaceAssociation

@synthesize publicIP=_publicIP, publicDNSName=_publicDNSName, ipOwnerID=_ipOwnerID;

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
        @"publicIP": @"ec2:publicIp",
        @"publicDNSName": @"ec2:publicDnsName",
        @"ipOwnerID": @"ec2:ipOwnerId"
    }];
    return [keyPaths copy];
}

@end
