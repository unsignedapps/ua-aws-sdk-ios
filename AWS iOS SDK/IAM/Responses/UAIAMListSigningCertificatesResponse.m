//
//  UAIAMListSigningCertificatesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMListSigningCertificatesResponse.h"
#import "UAIAMCertificate.h"

@implementation UAIAMListSigningCertificatesResponse

@synthesize certificates=_certificates, isTruncated=_isTruncated, marker=_marker;

+ (NSString *)XPathPrefix
{
    return @"./ListSigningCertificatesResponse/ListSigningCertificatesResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAIAMResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"certificates": @"Certificates/member",
        @"isTruncated": @"IsTruncated",
        @"marker": @"Marker"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)certificatesXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAIAMCertificate class]];
}

+ (NSValueTransformer *)isTruncatedXMLTransformer
{
    return [MTLValueTransformer UA_XMLTransformerForBooleanString];
}

@end
