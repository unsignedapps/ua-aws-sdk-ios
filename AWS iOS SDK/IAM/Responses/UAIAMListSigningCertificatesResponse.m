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
    return @"./iam:ListSigningCertificatesResponse/iam:ListSigningCertificatesResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAIAMResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"certificates": @"iam:Certificates/iam:member",
        @"isTruncated": @"iam:IsTruncated",
        @"marker": @"iam:Marker"
    }];
    return [keyPaths copy];
}

- (UAIAMCertificate *)certificateAtIndex:(NSUInteger)index
{
    if (self.certificates == nil || index >= ([self.certificates count]-1))
        return nil;

    return [self.certificates objectAtIndex:index];
}

+ (NSValueTransformer *)certificatesXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAIAMCertificate class]];
}

+ (NSValueTransformer *)isTruncatedXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

@end
