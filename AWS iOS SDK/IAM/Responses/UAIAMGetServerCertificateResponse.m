//
//  UAIAMGetServerCertificateResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMGetServerCertificateResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAIAMServerCertificate.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAIAMGetServerCertificateResponse

@synthesize serverCertificate=_serverCertificate;

+ (NSString *)XPathPrefix
{
    return @"./iam:GetServerCertificateResponse/iam:GetServerCertificateResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAIAMResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"serverCertificate": @"iam:ServerCertificate"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)serverCertificateXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UAIAMServerCertificate class]];
}

@end

#pragma clang diagnostic pop