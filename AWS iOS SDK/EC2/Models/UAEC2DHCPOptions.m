//
//  UAEC2DHCPOptions.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DHCPOptions.h"
#import "UAEC2DHCPConfiguration.h"
#import "UAEC2Tag.h"

@implementation UAEC2DHCPOptions

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

- (UAEC2DHCPConfiguration *)dhcpConfigurationAtIndex:(NSUInteger)index
{
    if (self.dhcpConfigurations == nil || index >= ([self.dhcpConfigurations count]-1))
        return nil;

    return [self.dhcpConfigurations objectAtIndex:index];
}

- (UAEC2Tag *)tagAtIndex:(NSUInteger)index
{
    if (self.tags == nil || index >= ([self.tags count]-1))
        return nil;

    return [self.tags objectAtIndex:index];
}

+ (NSValueTransformer *)dhcpConfigurationsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2DHCPConfiguration class]];
}

+ (NSValueTransformer *)tagsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2Tag class]];
}

+ (NSValueTransformer *)dhcpConfigurationsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2DHCPConfiguration class]];
}

+ (NSValueTransformer *)tagsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2Tag class]];
}

@end
