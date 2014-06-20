//
//  UADDBDescribeTableResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBDescribeTableResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UADDBTableDescription.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UADDBDescribeTableResponse

@synthesize table=_table;

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UADDBResponse JSONKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"table": @"Table"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)tableJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONDictionaryTransformerWithModelClass:[UADDBTableDescription class]];
}

@end

#pragma clang diagnostic pop