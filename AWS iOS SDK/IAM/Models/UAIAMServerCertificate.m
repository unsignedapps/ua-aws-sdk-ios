//
//  UAIAMServerCertificate.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMServerCertificate.h"
#import "UAIAMServerCertificateMetadata.h"

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
  return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[UAIAMServerCertificateMetadata class]];
}

+ (NSValueTransformer *)serverCertificateMetadataXMLTransformer
{
  return [NSValueTransformer mtl_XMLTransformerWithModelClass:[UAIAMServerCertificateMetadata class]];
}

@end
