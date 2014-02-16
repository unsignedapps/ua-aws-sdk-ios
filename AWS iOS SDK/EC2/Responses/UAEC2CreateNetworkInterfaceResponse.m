//
//  UAEC2CreateNetworkInterfaceResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2CreateNetworkInterfaceResponse.h"
#import "UAEC2NetworkInterface.h"

@implementation UAEC2CreateNetworkInterfaceResponse

@synthesize networkInterface=_networkInterface;

+ (NSString *)XPathPrefix
{
    return @"./ec2:CreateNetworkInterfaceResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"networkInterface": @"ec2:networkInterface"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)networkInterfaceXMLTransformer
{
  return [NSValueTransformer mtl_XMLTransformerWithModelClass:[UAEC2NetworkInterface class]];
}

@end
