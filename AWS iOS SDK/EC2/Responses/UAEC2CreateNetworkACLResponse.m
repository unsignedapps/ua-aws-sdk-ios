//
//  UAEC2CreateNetworkACLResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2CreateNetworkACLResponse.h"
#import "UAEC2NetworkACL.h"

@implementation UAEC2CreateNetworkACLResponse

@synthesize networkACL=_networkACL;

+ (NSString *)XPathPrefix
{
    return @"./ec2:CreateNetworkAclResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"networkACL": @"ec2:networkAcl"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)networkACLXMLTransformer
{
  return [NSValueTransformer mtl_XMLTransformerWithModelClass:[UAEC2NetworkACL class]];
}

@end
