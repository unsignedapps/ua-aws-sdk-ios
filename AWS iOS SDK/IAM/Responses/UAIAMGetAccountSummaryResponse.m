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

- (UAIAMAccountSummary *)summaryMapAtIndex:(NSUInteger)index
{
    if (self.summaryMap == nil || index >= ([self.summaryMap count]-1))
        return nil;

    return [self.summaryMap objectAtIndex:index];
}

+ (NSValueTransformer *)summaryMapXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAIAMAccountSummary class]];
}

@end
