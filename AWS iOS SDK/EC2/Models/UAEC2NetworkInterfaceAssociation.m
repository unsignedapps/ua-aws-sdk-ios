//
//  UAEC2NetworkInterfaceAssociation.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2NetworkInterfaceAssociation.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2NetworkInterfaceAssociation

@synthesize publicIP=_publicIP, publicDNSName=_publicDNSName, ipOwnerID=_ipOwnerID, allocationID=_allocationID, associationID=_associationID;

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
        @"ipOwnerID": @"ec2:ipOwnerId",
        @"allocationID": @"ec2:allocationId",
        @"associationID": @"ec2:associationId"
    }];
    return [keyPaths copy];
}

@end

#pragma clang diagnostic pop