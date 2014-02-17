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
    return @"./GetSAMLProviderResponse/GetSAMLProviderResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAIAMResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"sAMLMetadataDocument": @"SAMLMetadataDocument",
        @"createDate": @"CreateDate",
        @"validUntil": @"ValidUntil"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)createDateXMLTransformer
{
    return [NSValueTransformer mtl_XMLTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

@end