//
//  UAIAMListSAMLProvidersResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMListSAMLProvidersResponse.h"
#import "UAIAMSAMLProviderList.h"

@implementation UAIAMListSAMLProvidersResponse

@synthesize sAMLProviderList=_sAMLProviderList;

+ (NSString *)XPathPrefix
{
    return @"./iam:ListSAMLProvidersResponse/iam:ListSAMLProvidersResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAIAMResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"sAMLProviderList": @"iam:SAMLProviderList/iam:member"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)sAMLProviderListXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAIAMSAMLProviderList class]];
}

@end
