//
//  UAIAMUploadSigningCertificateResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMUploadSigningCertificateResponse.h"
#import "UAIAMSigningCertificate.h"

@implementation UAIAMUploadSigningCertificateResponse

@synthesize certificate=_certificate;

+ (NSString *)XPathPrefix
{
    return @"./iam:UploadSigningCertificateResponse/iam:UploadSigningCertificateResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAIAMResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"certificate": @"iam:Certificate"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)certificateXMLTransformer
{
  return [NSValueTransformer mtl_XMLTransformerWithModelClass:[UAIAMSigningCertificate class]];
}

@end
