//
//  UAEC2Address.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Address.h"

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
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value)
    {
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"standard"])
		    return @(UAEC2DomainStandard);
		if ([value isEqualToString:@"vpc"])
		    return @(UAEC2DomainVPC);

		return @(UAEC2DomainUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAEC2Domain castValue = (UAEC2Domain)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAEC2DomainStandard:
			    return @"standard";
			case UAEC2DomainVPC:
			    return @"vpc";

			case UAEC2DomainUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)domainXMLTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSArray *nodes)
    {
		if (nodes == nil || [nodes count] == 0)
			return @(UAEC2DomainUnknown);

		NSString *value = [((DDXMLElement *)nodes.firstObject) stringValue];
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"standard"])
		    return @(UAEC2DomainStandard);
		if ([value isEqualToString:@"vpc"])
		    return @(UAEC2DomainVPC);

		return @(UAEC2DomainUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAEC2Domain castValue = (UAEC2Domain)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAEC2DomainStandard:
			    return @"standard";
			case UAEC2DomainVPC:
			    return @"vpc";

			case UAEC2DomainUnknown:
			default:
				return nil;
        }
    }];
}

@end
