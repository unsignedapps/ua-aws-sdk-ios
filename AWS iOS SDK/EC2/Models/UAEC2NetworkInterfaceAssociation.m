//
//  UAEC2NetworkInterfaceAssociation.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2NetworkInterfaceAssociation.h"

@implementation UAEC2NetworkInterfaceAssociation

@synthesize publicIP=_publicIP, ipOwnerID=_ipOwnerID, allocationID=_allocationID, associationID=_associationID;

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
        @"ipOwnerID": @"ec2:ipOwnerId",
        @"allocationID": @"ec2:allocationId",
        @"associationID": @"ec2:associationId"
    }];
    return [keyPaths copy];
}

@end
