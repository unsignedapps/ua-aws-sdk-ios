//
//  UAIAMUploadServerCertificateResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMUploadServerCertificateResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAIAMServerCertificateMetadata.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAIAMUploadServerCertificateResponse

@synthesize serverCertificateMetadata=_serverCertificateMetadata;

+ (NSString *)XPathPrefix
{
    return @"./iam:UploadServerCertificateResponse/iam:UploadServerCertificateResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAIAMResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"serverCertificateMetadata": @"iam:ServerCertificateMetadata"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)serverCertificateMetadataXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UAIAMServerCertificateMetadata class]];
}

@end

#pragma clang diagnostic pop