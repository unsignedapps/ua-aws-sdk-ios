//
//  UADDBCreateTableResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBCreateTableResponse.h"
#import "UADDBTableDescription.h"

@implementation UADDBCreateTableResponse

@synthesize tableDescription=_tableDescription;

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UADDBResponse JSONKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"tableDescription": @"TableDescription"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)tableDescriptionJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONDictionaryTransformerWithModelClass:[UADDBTableDescription class]];
}

@end
