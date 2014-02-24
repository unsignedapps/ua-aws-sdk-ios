//
//  UAIAMListServerCertificatesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMListServerCertificatesResponse.h"
#import "UAIAMServerCertificateMetadataList.h"

@implementation UAIAMListServerCertificatesResponse

@synthesize serverCertificateMetadataList=_serverCertificateMetadataList, isTruncated=_isTruncated, marker=_marker;

+ (NSString *)XPathPrefix
{
    return @"./iam:ListServerCertificatesResponse/iam:ListServerCertificatesResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAIAMResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"serverCertificateMetadataList": @"iam:ServerCertificateMetadataList/iam:member",
        @"isTruncated": @"iam:IsTruncated",
        @"marker": @"iam:Marker"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)serverCertificateMetadataListXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAIAMServerCertificateMetadataList class]];
}

+ (NSValueTransformer *)isTruncatedXMLTransformer
{
    return [MTLValueTransformer UA_XMLTransformerForBooleanString];
}

@end
