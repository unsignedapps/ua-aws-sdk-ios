//
//  UAEC2PrivateIPAddress.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2PrivateIPAddress.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2NetworkInterfaceAssociation.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2PrivateIPAddress

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
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UAEC2NetworkInterfaceAssociation class]];
}

+ (NSValueTransformer *)primaryXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

+ (NSValueTransformer *)associationXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UAEC2NetworkInterfaceAssociation class]];
}

@end

#pragma clang diagnostic pop