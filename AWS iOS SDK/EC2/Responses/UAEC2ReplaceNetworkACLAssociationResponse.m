//
//  UAEC2ReplaceNetworkACLAssociationResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2ReplaceNetworkACLAssociationResponse.h"

@implementation UAEC2ReplaceNetworkACLAssociationResponse

@synthesize associationID=_associationID;

+ (NSString *)XPathPrefix
{
    return @"./ec2:ReplaceNetworkAclAssociationResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"associationID": @"ec2:newAssociationId"
    }];
    return [keyPaths copy];
}

@end
