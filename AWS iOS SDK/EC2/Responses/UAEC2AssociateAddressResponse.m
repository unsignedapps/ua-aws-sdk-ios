//
//  UAEC2AssociateAddressResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2AssociateAddressResponse.h"

@implementation UAEC2AssociateAddressResponse

@synthesize associationID=_associationID;

+ (NSString *)XPathPrefix
{
    return @"./ec2:AssociateAddressResponse/";
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
