//
//  UAIAMGetAccountSummaryResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMGetAccountSummaryResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAIAMAccountSummary.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAIAMGetAccountSummaryResponse

@synthesize summaryMap=_summaryMap;

+ (NSString *)XPathPrefix
{
    return @"./iam:GetAccountSummaryResponse/iam:GetAccountSummaryResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAIAMResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"summaryMap": @"iam:SummaryMap/iam:entry"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)summaryMapXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAIAMAccountSummary class]];
}

@end

#pragma clang diagnostic pop