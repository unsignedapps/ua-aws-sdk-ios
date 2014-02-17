//
//  UAIAMGetServerCertificateResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMGetServerCertificateResponse.h"
#import "UAIAMServerCertificate.h"

@implementation UAIAMGetServerCertificateResponse

@synthesize serverCertificate=_serverCertificate;

+ (NSString *)XPathPrefix
{
    return @"./GetServerCertificateResponse/GetServerCertificateResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAIAMResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"serverCertificate": @"ServerCertificate"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)serverCertificateXMLTransformer
{
  return [NSValueTransformer mtl_XMLTransformerWithModelClass:[UAIAMServerCertificate class]];
}

@end
