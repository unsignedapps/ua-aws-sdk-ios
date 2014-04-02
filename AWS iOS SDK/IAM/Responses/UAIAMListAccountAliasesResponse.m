//
//  UAIAMListAccountAliasesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMListAccountAliasesResponse.h"

@implementation UAIAMListAccountAliasesResponse

@synthesize accountAliases=_accountAliases, isTruncated=_isTruncated, marker=_marker;

+ (NSString *)XPathPrefix
{
    return @"./iam:ListAccountAliasesResponse/iam:ListAccountAliasesResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAIAMResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"accountAliases": @"iam:AccountAliases/iam:member",
        @"isTruncated": @"iam:IsTruncated",
        @"marker": @"iam:Marker"
    }];
    return [keyPaths copy];
}

- (NSString *)accountAliasAtIndex:(NSUInteger)index
{
    if (self.accountAliases == nil || index >= ([self.accountAliases count]-1))
        return nil;

    return [self.accountAliases objectAtIndex:index];
}

+ (NSValueTransformer *)accountAliasesXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForArrayOfStrings];
}

+ (NSValueTransformer *)isTruncatedXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

@end
