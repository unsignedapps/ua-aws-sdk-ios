//
//  UAEC2DHCPOption.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DHCPOption.h"
#import "UAEC2DHCPConfiguration.h"
#import "UAEC2Tag.h"

@implementation UAEC2DHCPOption

@synthesize dhcpOptionsID=_dhcpOptionsID, dhcpConfigurations=_dhcpConfigurations, tags=_tags;

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
        @"dhcpOptionsID": @"ec2:dhcpOptionsId",
        @"dhcpConfigurations": @"ec2:dhcpConfigurationSet/ec2:item",
        @"tags": @"ec2:tagSet/ec2:item"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)dhcpConfigurationsQueryStringTransformer
{
	return [NSValueTransformer mtl_QueryStringArrayTransformerWithModelClass:[UAEC2DHCPConfiguration class]];
}

+ (NSValueTransformer *)tagsQueryStringTransformer
{
	return [NSValueTransformer mtl_QueryStringArrayTransformerWithModelClass:[UAEC2Tag class]];
}

+ (NSValueTransformer *)dhcpConfigurationsXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAEC2DHCPConfiguration class]];
}

+ (NSValueTransformer *)tagsXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAEC2Tag class]];
}

@end
