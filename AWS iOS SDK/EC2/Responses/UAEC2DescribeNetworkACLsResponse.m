//
//  UAEC2DescribeNetworkACLsResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribeNetworkACLsResponse.h"
#import "UAEC2NetworkACL.h"

@implementation UAEC2DescribeNetworkACLsResponse

@synthesize networkACLs=_networkACLs;

+ (NSString *)XPathPrefix
{
    return @"./ec2:DescribeNetworkAclsResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"networkACLs": @"ec2:networkAclSet/ec2:item"
    }];
    return [keyPaths copy];
}

- (UAEC2NetworkACL *)networkACLAtIndex:(NSUInteger)index
{
    if (self.networkACLs == nil || index >= ([self.networkACLs count]-1))
        return nil;

    return [self.networkACLs objectAtIndex:index];
}

+ (NSValueTransformer *)networkACLsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2NetworkACL class]];
}

@end
