//
//  UAEC2InstancePrivateIPAddress.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2InstancePrivateIPAddress.h"
#import "UAEC2InstanceNetworkInterfaceAssociation.h"

@implementation UAEC2InstancePrivateIPAddress

@synthesize privateIPAddress=_privateIPAddress, privateDNSName=_privateDNSName, primary=_primary, association=_association;

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
        @"privateIPAddress": @"ec2:privateIpAddress",
        @"privateDNSName": @"ec2:privateDnsName",
        @"primary": @"ec2:primary",
        @"association": @"ec2:association"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)associationQueryStringTransformer
{
  return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[UAEC2InstanceNetworkInterfaceAssociation class]];
}

+ (NSValueTransformer *)associationXMLTransformer
{
  return [NSValueTransformer mtl_XMLTransformerWithModelClass:[UAEC2InstanceNetworkInterfaceAssociation class]];
}

@end
