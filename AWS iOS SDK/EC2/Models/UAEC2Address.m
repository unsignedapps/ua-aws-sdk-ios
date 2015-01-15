//
//  UAEC2Address.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Address.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2Address

@synthesize instanceID=_instanceID, publicIP=_publicIP, allocationID=_allocationID, associationID=_associationID, domain=_domain, networkInterfaceID=_networkInterfaceID, networkInterfaceOwnerID=_networkInterfaceOwnerID, privateIPAddress=_privateIPAddress;

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
        @"instanceID": @"ec2:instanceId",
        @"publicIP": @"ec2:publicIp",
        @"allocationID": @"ec2:allocationId",
        @"associationID": @"ec2:associationId",
        @"domain": @"ec2:domain",
        @"networkInterfaceID": @"ec2:networkInterfaceId",
        @"networkInterfaceOwnerID": @"ec2:networkInterfaceOwnerId",
        @"privateIPAddress": @"ec2:privateIpAddress"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)domainQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2DomainStandard), @(UAEC2DomainVPC) ]
                                               stringValues:@[ @"standard", @"vpc" ]
                                               unknownValue:@(UAEC2DomainUnknown)];
}

+ (NSValueTransformer *)domainXMLTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2DomainStandard), @(UAEC2DomainVPC) ]
                                               stringValues:@[ @"standard", @"vpc" ]
                                               unknownValue:@(UAEC2DomainUnknown)];
}

@end

#pragma clang diagnostic pop