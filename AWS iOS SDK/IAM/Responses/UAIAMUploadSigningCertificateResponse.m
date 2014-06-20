//
//  UAIAMUploadSigningCertificateResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMUploadSigningCertificateResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAIAMSigningCertificate.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

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
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UAIAMSigningCertificate class]];
}

@end

#pragma clang diagnostic pop