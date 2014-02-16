//
//  UAEC2ReplaceRouteTableAssociationResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2ReplaceRouteTableAssociationResponse.h"

@implementation UAEC2ReplaceRouteTableAssociationResponse

@synthesize associationID=_associationID;

+ (NSString *)XPathPrefix
{
    return @"./ec2:ReplaceRouteTableAssociationResponse/";
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
