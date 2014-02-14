//
//  UAEC2AllocateAddressResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2AllocateAddressResponse.h"

@implementation UAEC2AllocateAddressResponse

@synthesize publicIP=_publicIP, domain=_domain, allocationID=_allocationID;

+ (NSString *)XPathPrefix
{
    return @"./ec2:AllocateAddressResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"publicIP": @"ec2:publicIp",
        @"domain": @"ec2:domain",
        @"allocationID": @"ec2:allocationId"
    }];
    return [keyPaths copy];
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
