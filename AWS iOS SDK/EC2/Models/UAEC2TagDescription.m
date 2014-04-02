//
//  UAEC2TagDescription.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2TagDescription.h"

@implementation UAEC2TagDescription

@synthesize resourceID=_resourceID, resourceType=_resourceType, key=_key, value=_value;

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
        @"resourceID": @"ec2:resourceId",
        @"resourceType": @"ec2:resourceType",
        @"key": @"ec2:key",
        @"value": @"ec2:value"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)resourceTypeQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2ResourceTypeCustomerGateway), @(UAEC2ResourceTypeDHCPOptions), @(UAEC2ResourceTypeImage), @(UAEC2ResourceTypeInstance), @(UAEC2ResourceTypeInternetGateway), @(UAEC2ResourceTypeNetworkACL), @(UAEC2ResourceTypeNetworkInterface), @(UAEC2ResourceTypeReservedInstances), @(UAEC2ResourceTypeRouteTable), @(UAEC2ResourceTypeSecurityGroup), @(UAEC2ResourceTypeSnapshot), @(UAEC2ResourceTypeSpotInstancesRequest), @(UAEC2ResourceTypeSubnet), @(UAEC2ResourceTypeVolume), @(UAEC2ResourceTypeVPC), @(UAEC2ResourceTypeVPNConnection), @(UAEC2ResourceTypeVPNGateway) ]
                                               stringValues:@[ @"customer-gateway", @"dhcp-options", @"image", @"instance", @"internet-gateway", @"network-acl", @"network-interface", @"reserved-instances", @"route-table", @"security-group", @"snapshot", @"spot-instances-request", @"subnet", @"volume", @"vpc", @"vpn-connection", @"vpn-gateway" ]
                                               unknownValue:@(UAEC2ResourceTypeUnknown)];
}

+ (NSValueTransformer *)resourceTypeXMLTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2ResourceTypeCustomerGateway), @(UAEC2ResourceTypeDHCPOptions), @(UAEC2ResourceTypeImage), @(UAEC2ResourceTypeInstance), @(UAEC2ResourceTypeInternetGateway), @(UAEC2ResourceTypeNetworkACL), @(UAEC2ResourceTypeNetworkInterface), @(UAEC2ResourceTypeReservedInstances), @(UAEC2ResourceTypeRouteTable), @(UAEC2ResourceTypeSecurityGroup), @(UAEC2ResourceTypeSnapshot), @(UAEC2ResourceTypeSpotInstancesRequest), @(UAEC2ResourceTypeSubnet), @(UAEC2ResourceTypeVolume), @(UAEC2ResourceTypeVPC), @(UAEC2ResourceTypeVPNConnection), @(UAEC2ResourceTypeVPNGateway) ]
                                               stringValues:@[ @"customer-gateway", @"dhcp-options", @"image", @"instance", @"internet-gateway", @"network-acl", @"network-interface", @"reserved-instances", @"route-table", @"security-group", @"snapshot", @"spot-instances-request", @"subnet", @"volume", @"vpc", @"vpn-connection", @"vpn-gateway" ]
                                               unknownValue:@(UAEC2ResourceTypeUnknown)];
}

@end
