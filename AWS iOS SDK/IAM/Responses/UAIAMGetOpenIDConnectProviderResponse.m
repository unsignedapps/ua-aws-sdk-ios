//
//  UAIAMGetOpenIDConnectProviderResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMGetOpenIDConnectProviderResponse.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAIAMGetOpenIDConnectProviderResponse

@synthesize url=_url, clientIDList=_clientIDList, thumbprintList=_thumbprintList, createDate=_createDate;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(clientIDListAtIndex:) propertyName:@"clientIDList"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(thumbprintListAtIndex:) propertyName:@"thumbprintList"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addClientIDList:) propertyName:@"clientIDList"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addThumbprintList:) propertyName:@"thumbprintList"];
	}
	return self;
}

+ (NSString *)XPathPrefix
{
    return @"./iam:GetOpenIDConnectProviderResponse/iam:GetOpenIDConnectProviderResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAIAMResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"url": @"iam:Url",
        @"clientIDList": @"iam:ClientIDList/iam:member",
        @"thumbprintList": @"iam:ThumbprintList/iam:member",
        @"createDate": @"iam:CreateDate"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)clientIDListXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForArrayOfStrings];
}

+ (NSValueTransformer *)thumbprintListXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForArrayOfStrings];
}

+ (NSValueTransformer *)createDateXMLTransformer
{
    return [NSValueTransformer UAMTL_XMLTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

@end

#pragma clang diagnostic pop