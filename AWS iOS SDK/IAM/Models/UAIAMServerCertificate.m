//
//  UAIAMServerCertificate.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMServerCertificate.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAIAMServerCertificateMetadata.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAIAMServerCertificate

@synthesize serverCertificateMetadata=_serverCertificateMetadata, certificateBody=_certificateBody, certificateChain=_certificateChain;

+ (NSString *)XPathPrefix
{
    return @"./";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAIAMModel XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"serverCertificateMetadata": @"iam:ServerCertificateMetadata",
        @"certificateBody": @"iam:CertificateBody",
        @"certificateChain": @"iam:CertificateChain"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)serverCertificateMetadataQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UAIAMServerCertificateMetadata class]];
}

+ (NSValueTransformer *)serverCertificateMetadataXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UAIAMServerCertificateMetadata class]];
}

@end

#pragma clang diagnostic pop