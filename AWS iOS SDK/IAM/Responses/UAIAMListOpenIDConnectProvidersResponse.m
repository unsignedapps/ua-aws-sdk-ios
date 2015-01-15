//
//  UAIAMListOpenIDConnectProvidersResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMListOpenIDConnectProvidersResponse.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAIAMListOpenIDConnectProvidersResponse

@synthesize openIDConnectProviderList=_openIDConnectProviderList;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(openIDConnectProviderListAtIndex:) propertyName:@"openIDConnectProviderList"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addOpenIDConnectProviderList:) propertyName:@"openIDConnectProviderList"];
	}
	return self;
}

+ (NSString *)XPathPrefix
{
    return @"./iam:ListOpenIDConnectProvidersResponse/iam:ListOpenIDConnectProvidersResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAIAMResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"openIDConnectProviderList": @"iam:OpenIDConnectProviderList/iam:member.Arn"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)openIDConnectProviderListXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForArrayOfStrings];
}

@end

#pragma clang diagnostic pop