//
//  UAIAMGetSAMLProviderResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMGetSAMLProviderResponse.h"

@implementation UAIAMGetSAMLProviderResponse

@synthesize sAMLMetadataDocument=_sAMLMetadataDocument, createDate=_createDate, validUntil=_validUntil;

+ (NSString *)XPathPrefix
{
    return @"./iam:GetSAMLProviderResponse/iam:GetSAMLProviderResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAIAMResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"sAMLMetadataDocument": @"iam:SAMLMetadataDocument",
        @"createDate": @"iam:CreateDate",
        @"validUntil": @"iam:ValidUntil"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)createDateXMLTransformer
{
    return [NSValueTransformer UAMTL_XMLTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

@end
