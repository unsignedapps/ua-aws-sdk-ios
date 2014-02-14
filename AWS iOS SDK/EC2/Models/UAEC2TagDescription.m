//
//  UAEC2TagDescription.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
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
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value)
    {
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"customer-gateway"])
		    return @(UAEC2ResourceTypeCustomerGateway);
		if ([value isEqualToString:@"dhcp-options"])
		    return @(UAEC2ResourceTypeDHCPOptions);
		if ([value isEqualToString:@"image"])
		    return @(UAEC2ResourceTypeImage);
		if ([value isEqualToString:@"instance"])
		    return @(UAEC2ResourceTypeInstance);
		if ([value isEqualToString:@"internet-gateway"])
		    return @(UAEC2ResourceTypeInternetGateway);
		if ([value isEqualToString:@"network-acl"])
		    return @(UAEC2ResourceTypeNetworkACL);
		if ([value isEqualToString:@"network-interface"])
		    return @(UAEC2ResourceTypeNetworkInterface);
		if ([value isEqualToString:@"reserved-instances"])
		    return @(UAEC2ResourceTypeReservedInstances);
		if ([value isEqualToString:@"route-table"])
		    return @(UAEC2ResourceTypeRouteTable);
		if ([value isEqualToString:@"security-group"])
		    return @(UAEC2ResourceTypeSecurityGroup);
		if ([value isEqualToString:@"snapshot"])
		    return @(UAEC2ResourceTypeSnapshot);
		if ([value isEqualToString:@"spot-instances-request"])
		    return @(UAEC2ResourceTypeSpotInstancesRequest);
		if ([value isEqualToString:@"subnet"])
		    return @(UAEC2ResourceTypeSubnet);
		if ([value isEqualToString:@"volume"])
		    return @(UAEC2ResourceTypeVolume);
		if ([value isEqualToString:@"vpc"])
		    return @(UAEC2ResourceTypeVPC);
		if ([value isEqualToString:@"vpn-connection"])
		    return @(UAEC2ResourceTypeVPNConnection);
		if ([value isEqualToString:@"vpn-gateway"])
		    return @(UAEC2ResourceTypeVPNGateway);

		return @(UAEC2ResourceTypeUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAEC2ResourceType castValue = (UAEC2ResourceType)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAEC2ResourceTypeCustomerGateway:
			    return @"customer-gateway";
			case UAEC2ResourceTypeDHCPOptions:
			    return @"dhcp-options";
			case UAEC2ResourceTypeImage:
			    return @"image";
			case UAEC2ResourceTypeInstance:
			    return @"instance";
			case UAEC2ResourceTypeInternetGateway:
			    return @"internet-gateway";
			case UAEC2ResourceTypeNetworkACL:
			    return @"network-acl";
			case UAEC2ResourceTypeNetworkInterface:
			    return @"network-interface";
			case UAEC2ResourceTypeReservedInstances:
			    return @"reserved-instances";
			case UAEC2ResourceTypeRouteTable:
			    return @"route-table";
			case UAEC2ResourceTypeSecurityGroup:
			    return @"security-group";
			case UAEC2ResourceTypeSnapshot:
			    return @"snapshot";
			case UAEC2ResourceTypeSpotInstancesRequest:
			    return @"spot-instances-request";
			case UAEC2ResourceTypeSubnet:
			    return @"subnet";
			case UAEC2ResourceTypeVolume:
			    return @"volume";
			case UAEC2ResourceTypeVPC:
			    return @"vpc";
			case UAEC2ResourceTypeVPNConnection:
			    return @"vpn-connection";
			case UAEC2ResourceTypeVPNGateway:
			    return @"vpn-gateway";

			case UAEC2ResourceTypeUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)resourceTypeXMLTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSArray *nodes)
    {
		if (nodes == nil || [nodes count] == 0)
			return @(UAEC2ResourceTypeUnknown);

		NSString *value = [((DDXMLElement *)nodes.firstObject) stringValue];
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"customer-gateway"])
		    return @(UAEC2ResourceTypeCustomerGateway);
		if ([value isEqualToString:@"dhcp-options"])
		    return @(UAEC2ResourceTypeDHCPOptions);
		if ([value isEqualToString:@"image"])
		    return @(UAEC2ResourceTypeImage);
		if ([value isEqualToString:@"instance"])
		    return @(UAEC2ResourceTypeInstance);
		if ([value isEqualToString:@"internet-gateway"])
		    return @(UAEC2ResourceTypeInternetGateway);
		if ([value isEqualToString:@"network-acl"])
		    return @(UAEC2ResourceTypeNetworkACL);
		if ([value isEqualToString:@"network-interface"])
		    return @(UAEC2ResourceTypeNetworkInterface);
		if ([value isEqualToString:@"reserved-instances"])
		    return @(UAEC2ResourceTypeReservedInstances);
		if ([value isEqualToString:@"route-table"])
		    return @(UAEC2ResourceTypeRouteTable);
		if ([value isEqualToString:@"security-group"])
		    return @(UAEC2ResourceTypeSecurityGroup);
		if ([value isEqualToString:@"snapshot"])
		    return @(UAEC2ResourceTypeSnapshot);
		if ([value isEqualToString:@"spot-instances-request"])
		    return @(UAEC2ResourceTypeSpotInstancesRequest);
		if ([value isEqualToString:@"subnet"])
		    return @(UAEC2ResourceTypeSubnet);
		if ([value isEqualToString:@"volume"])
		    return @(UAEC2ResourceTypeVolume);
		if ([value isEqualToString:@"vpc"])
		    return @(UAEC2ResourceTypeVPC);
		if ([value isEqualToString:@"vpn-connection"])
		    return @(UAEC2ResourceTypeVPNConnection);
		if ([value isEqualToString:@"vpn-gateway"])
		    return @(UAEC2ResourceTypeVPNGateway);

		return @(UAEC2ResourceTypeUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAEC2ResourceType castValue = (UAEC2ResourceType)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAEC2ResourceTypeCustomerGateway:
			    return @"customer-gateway";
			case UAEC2ResourceTypeDHCPOptions:
			    return @"dhcp-options";
			case UAEC2ResourceTypeImage:
			    return @"image";
			case UAEC2ResourceTypeInstance:
			    return @"instance";
			case UAEC2ResourceTypeInternetGateway:
			    return @"internet-gateway";
			case UAEC2ResourceTypeNetworkACL:
			    return @"network-acl";
			case UAEC2ResourceTypeNetworkInterface:
			    return @"network-interface";
			case UAEC2ResourceTypeReservedInstances:
			    return @"reserved-instances";
			case UAEC2ResourceTypeRouteTable:
			    return @"route-table";
			case UAEC2ResourceTypeSecurityGroup:
			    return @"security-group";
			case UAEC2ResourceTypeSnapshot:
			    return @"snapshot";
			case UAEC2ResourceTypeSpotInstancesRequest:
			    return @"spot-instances-request";
			case UAEC2ResourceTypeSubnet:
			    return @"subnet";
			case UAEC2ResourceTypeVolume:
			    return @"volume";
			case UAEC2ResourceTypeVPC:
			    return @"vpc";
			case UAEC2ResourceTypeVPNConnection:
			    return @"vpn-connection";
			case UAEC2ResourceTypeVPNGateway:
			    return @"vpn-gateway";

			case UAEC2ResourceTypeUnknown:
			default:
				return nil;
        }
    }];
}

@end
