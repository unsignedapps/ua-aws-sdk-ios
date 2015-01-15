//
//  UAIAMListServerCertificatesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMListServerCertificatesResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAIAMServerCertificateMetadata.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAIAMListServerCertificatesResponse

@synthesize serverCertificateMetadata=_serverCertificateMetadata, isTruncated=_isTruncated, marker=_marker;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(serverCertificateMetadataAtIndex:) propertyName:@"serverCertificateMetadata"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addServerCertificateMetadata:) propertyName:@"serverCertificateMetadata"];
	}
	return self;
}

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
        @"serverCertificateMetadata": @"iam:ServerCertificateMetadataList/iam:member",
        @"isTruncated": @"iam:IsTruncated",
        @"marker": @"iam:Marker"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)serverCertificateMetadataXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAIAMServerCertificateMetadata class]];
}

+ (NSValueTransformer *)isTruncatedXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

@end

#pragma clang diagnostic pop