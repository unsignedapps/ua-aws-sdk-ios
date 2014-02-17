//
//  UAIAMGetAccountSummaryResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMGetAccountSummaryResponse.h"
#import "UAIAMAccountSummary.h"

@implementation UAIAMGetAccountSummaryResponse

@synthesize summaryMap=_summaryMap;

+ (NSString *)XPathPrefix
{
    return @"./GetAccountSummaryResponse/GetAccountSummaryResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAIAMResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"summaryMap": @"SummaryMap/entry"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)summaryMapXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAIAMAccountSummary class]];
}

@end
