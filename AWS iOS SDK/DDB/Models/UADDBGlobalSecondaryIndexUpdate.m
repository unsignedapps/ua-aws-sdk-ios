//
//  UADDBGlobalSecondaryIndexUpdate.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBGlobalSecondaryIndexUpdate.h"
#import "UAAWSAdditionalAccessors.h"
#import "UADDBUpdate.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UADDBGlobalSecondaryIndexUpdate

@synthesize update=_update;

- (id)initWithUpdate:(UADDBUpdate *)update
{
	if ((self = [self init]))
	{
		[self setUpdate:update];
	}
	return self;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UADDBModel JSONKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"update": @"Update"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)updateJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONDictionaryTransformerWithModelClass:[UADDBUpdate class]];
}

@end

#pragma clang diagnostic pop