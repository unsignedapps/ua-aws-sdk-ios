//
//  UAIAMListSAMLProvidersResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMListSAMLProvidersResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAIAMSAMLProviderList.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAIAMListSAMLProvidersResponse

@synthesize sAMLProviderList=_sAMLProviderList;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(sAMLProviderListAtIndex:) propertyName:@"sAMLProviderList"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addSAMLProviderList:) propertyName:@"sAMLProviderList"];
	}
	return self;
}

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

#pragma clang diagnostic pop