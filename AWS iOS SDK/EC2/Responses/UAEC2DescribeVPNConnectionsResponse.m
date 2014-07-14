//
//  UAEC2DescribeVPNConnectionsResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribeVPNConnectionsResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2VPNConnection.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2DescribeVPNConnectionsResponse

@synthesize vpnConnections=_vpnConnections;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(vpnConnectionAtIndex:) propertyName:@"vpnConnections"];
	}
	return self;
}

+ (NSString *)XPathPrefix
{
    return @"./ec2:DescribeVpnConnectionsResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"vpnConnections": @"ec2:vpnConnectionSet/ec2:item"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)vpnConnectionsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2VPNConnection class]];
}

@end

#pragma clang diagnostic pop