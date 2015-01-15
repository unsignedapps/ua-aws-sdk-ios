//
//  UAEC2CreateDHCPOptionsResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2CreateDHCPOptionsResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2DHCPOptions.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2CreateDHCPOptionsResponse

@synthesize dhcpOptions=_dhcpOptions;

+ (NSString *)XPathPrefix
{
    return @"./ec2:CreateDhcpOptionsResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"dhcpOptions": @"ec2:dhcpOptions"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)dhcpOptionsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UAEC2DHCPOptions class]];
}

@end

#pragma clang diagnostic pop