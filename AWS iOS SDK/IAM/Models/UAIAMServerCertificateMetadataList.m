//
//  UAIAMServerCertificateMetadataList.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMServerCertificateMetadataList.h"

@implementation UAIAMServerCertificateMetadataList

@synthesize path=_path, serverCertificateName=_serverCertificateName, serverCertificateID=_serverCertificateID, arn=_arn, uploadDate=_uploadDate;

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
        @"path": @"Path",
        @"serverCertificateName": @"ServerCertificateName",
        @"serverCertificateID": @"ServerCertificateId",
        @"arn": @"Arn",
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
