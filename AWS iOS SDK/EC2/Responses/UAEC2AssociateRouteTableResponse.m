//
//  UAEC2AssociateRouteTableResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2AssociateRouteTableResponse.h"

@implementation UAEC2AssociateRouteTableResponse

@synthesize associationID=_associationID;

+ (NSString *)XPathPrefix
{
    return @"./ec2:AssociateRouteTableResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"associationID": @"ec2:associationId"
    }];
    return [keyPaths copy];
}

@end
