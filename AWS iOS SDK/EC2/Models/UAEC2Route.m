//
//  UAEC2Route.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Route.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2Route

@synthesize destinationCidrBlock=_destinationCidrBlock, gatewayID=_gatewayID, instanceID=_instanceID, instanceOwnerID=_instanceOwnerID, networkInterfaceID=_networkInterfaceID, vpcPeeringConnectionID=_vpcPeeringConnectionID, state=_state;

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
        @"vpcPeeringConnectionID": @"ec2:vpcPeeringConnectionId",
        @"state": @"ec2:state"
    }];
    return [keyPaths copy];
}

@end

#pragma clang diagnostic pop