//
//  UADDBUpdate.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBUpdate.h"
#import "UAAWSAdditionalAccessors.h"
#import "UADDBProvisionedThroughput.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UADDBUpdate

@synthesize indexName=_indexName, provisionedThroughput=_provisionedThroughput;

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UADDBModel JSONKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"indexName": @"IndexName",
        @"provisionedThroughput": @"ProvisionedThroughput"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)provisionedThroughputJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONDictionaryTransformerWithModelClass:[UADDBProvisionedThroughput class]];
}

@end

#pragma clang diagnostic pop