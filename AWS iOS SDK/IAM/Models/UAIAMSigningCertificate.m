//
//  UAIAMSigningCertificate.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMSigningCertificate.h"

@implementation UAIAMSigningCertificate

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
        @"userName": @"iam:UserName",
        @"certificateID": @"iam:CertificateId",
        @"certificateBody": @"iam:CertificateBody",
        @"status": @"iam:Status",
        @"uploadDate": @"iam:UploadDate"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)statusQueryStringTransformer
{
    return [UAMTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value)
    {
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"Active"])
		    return @(UAIAMSigningCertificateStatusActive);
		if ([value isEqualToString:@"Inactive"])
		    return @(UAIAMSigningCertificateStatusInactive);

		return @(UAIAMSigningCertificateStatusUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAIAMSigningCertificateStatus castValue = (UAIAMSigningCertificateStatus)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAIAMSigningCertificateStatusActive:
			    return @"Active";
			case UAIAMSigningCertificateStatusInactive:
			    return @"Inactive";

			case UAIAMSigningCertificateStatusUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)uploadDateQueryStringTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)statusXMLTransformer
{
    return [UAMTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSArray *nodes)
    {
		if (nodes == nil || [nodes count] == 0)
			return @(UAIAMSigningCertificateStatusUnknown);

		NSString *value = [((UADDXMLElement *)nodes.firstObject) stringValue];
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"Active"])
		    return @(UAIAMSigningCertificateStatusActive);
		if ([value isEqualToString:@"Inactive"])
		    return @(UAIAMSigningCertificateStatusInactive);

		return @(UAIAMSigningCertificateStatusUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAIAMSigningCertificateStatus castValue = (UAIAMSigningCertificateStatus)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAIAMSigningCertificateStatusActive:
			    return @"Active";
			case UAIAMSigningCertificateStatusInactive:
			    return @"Inactive";

			case UAIAMSigningCertificateStatusUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)uploadDateXMLTransformer
{
    return [NSValueTransformer UAMTL_XMLTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

@end
