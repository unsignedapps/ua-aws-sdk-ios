//
//  UAEC2DescribeDHCPOptionsResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribeDHCPOptionsResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2DHCPOption.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2DescribeDHCPOptionsResponse

@synthesize dhcpOptions=_dhcpOptions;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(dhcpOptionAtIndex:) propertyName:@"dhcpOptions"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addDHCPOption:) propertyName:@"dhcpOptions"];
	}
	return self;
}

+ (NSString *)XPathPrefix
{
    return @"./ec2:DescribeDhcpOptionsResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"dhcpOptions": @"ec2:dhcpOptionsSet/ec2:item"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)dhcpOptionsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2DHCPOption class]];
}

@end

#pragma clang diagnostic pop