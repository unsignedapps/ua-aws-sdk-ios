//
//  UAEC2Route.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Route.h"

@implementation UAEC2Route

@synthesize destinationCidrBlock=_destinationCidrBlock, gatewayID=_gatewayID, instanceID=_instanceID, instanceOwnerID=_instanceOwnerID, networkInterfaceID=_networkInterfaceID, state=_state;

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
        @"destinationCidrBlock": @"ec2:destinationCidrBlock",
        @"gatewayID": @"ec2:gatewayId",
        @"instanceID": @"ec2:instanceId",
        @"instanceOwnerID": @"ec2:instanceOwnerId",
        @"networkInterfaceID": @"ec2:networkInterfaceId",
        @"state": @"ec2:state"
    }];
    return [keyPaths copy];
}

@end
