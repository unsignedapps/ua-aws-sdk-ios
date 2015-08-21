//
//  UARDSCertificate.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSCertificate.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UARDSCertificate

@synthesize certificateIdentifier=_certificateIdentifier, certificateType=_certificateType, thumbprint=_thumbprint, validFrom=_validFrom, validTill=_validTill;

+ (NSString *)XPathPrefix
{
    return @"./";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UARDSModel XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"certificateIdentifier": @"Rds:CertificateIdentifier",
        @"certificateType": @"Rds:CertificateType",
        @"thumbprint": @"Rds:Thumbprint",
        @"validFrom": @"Rds:ValidFrom",
        @"validTill": @"Rds:ValidTill"
    }];
    return [keyPaths copy];
}

@end

#pragma clang diagnostic pop