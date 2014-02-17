//
//  UAIAMCertificate.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMCertificate.h"

@implementation UAIAMCertificate

@synthesize userName=_userName, certificateID=_certificateID, certificateBody=_certificateBody, status=_status, uploadDate=_uploadDate;

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
        @"userName": @"UserName",
        @"certificateID": @"CertificateId",
        @"certificateBody": @"CertificateBody",
        @"status": @"Status",
        @"uploadDate": @"UploadDate"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)uploadDateQueryStringTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)uploadDateXMLTransformer
{
    return [NSValueTransformer mtl_XMLTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

@end
