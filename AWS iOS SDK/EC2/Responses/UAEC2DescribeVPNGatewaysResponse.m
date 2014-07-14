//
//  UAEC2DescribeVPNGatewaysResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribeVPNGatewaysResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2VPNGateway.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2DescribeVPNGatewaysResponse

@synthesize vpnGateways=_vpnGateways;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(vpnGatewayAtIndex:) propertyName:@"vpnGateways"];
	}
	return self;
}

+ (NSString *)XPathPrefix
{
    return @"./ec2:DescribeVpnGatewaysResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"vpnGateways": @"ec2:vpnGatewaySet/ec2:item"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)vpnGatewaysXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2VPNGateway class]];
}

@end

#pragma clang diagnostic pop