//
//  UAEC2CreateSubnetResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2CreateSubnetResponse.h"
#import "UAEC2Subnet.h"

@implementation UAEC2CreateSubnetResponse

@synthesize subnet=_subnet;

+ (NSString *)XPathPrefix
{
    return @"./ec2:CreateSubnetResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"subnet": @"ec2:subnet"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)subnetXMLTransformer
{
  return [NSValueTransformer mtl_XMLTransformerWithModelClass:[UAEC2Subnet class]];
}

@end
