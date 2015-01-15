//
//  UAIAMGetCredentialReportResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMGetCredentialReportResponse.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAIAMGetCredentialReportResponse

@synthesize content=_content, reportFormat=_reportFormat, generatedTime=_generatedTime;

+ (NSString *)XPathPrefix
{
    return @"./iam:GetCredentialReportResponse/iam:GetCredentialReportResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAIAMResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"content": @"iam:Content",
        @"reportFormat": @"iam:ReportFormat",
        @"generatedTime": @"iam:GeneratedTime"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)generatedTimeXMLTransformer
{
    return [NSValueTransformer UAMTL_XMLTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

@end

#pragma clang diagnostic pop