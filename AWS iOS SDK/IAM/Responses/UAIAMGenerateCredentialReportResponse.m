//
//  UAIAMGenerateCredentialReportResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMGenerateCredentialReportResponse.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAIAMGenerateCredentialReportResponse

@synthesize state=_state, descriptionValue=_descriptionValue;

+ (NSString *)XPathPrefix
{
    return @"./iam:GenerateCredentialReportResponse/iam:GenerateCredentialReportResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAIAMResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"state": @"iam:State",
        @"descriptionValue": @"iam:Description"
    }];
    return [keyPaths copy];
}

@end

#pragma clang diagnostic pop