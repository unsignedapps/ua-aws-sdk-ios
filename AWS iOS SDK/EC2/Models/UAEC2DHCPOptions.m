//
//  UAEC2DHCPOptions.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DHCPOptions.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2DHCPConfiguration.h"
#import "UAEC2Tag.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2DHCPOptions

@synthesize dhcpOptionsID=_dhcpOptionsID, dhcpConfigurations=_dhcpConfigurations, tags=_tags;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(dhcpConfigurationAtIndex:) propertyName:@"dhcpConfigurations"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(tagAtIndex:) propertyName:@"tags"];
	}
	return self;
}

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

#pragma clang diagnostic pop