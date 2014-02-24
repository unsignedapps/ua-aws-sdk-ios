//
//  UAIAMUploadServerCertificateResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMUploadServerCertificateResponse.h"
#import "UAIAMServerCertificateMetadata.h"

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
  return [NSValueTransformer mtl_XMLTransformerWithModelClass:[UAIAMServerCertificateMetadata class]];
}

@end
