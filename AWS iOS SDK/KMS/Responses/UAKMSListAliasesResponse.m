//
//  UAKMSListAliasesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAKMSListAliasesResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAKMSAlias.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAKMSListAliasesResponse

@synthesize aliases=_aliases, nextMarker=_nextMarker, truncated=_truncated;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(aliasAtIndex:) propertyName:@"aliases"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addAlias:) propertyName:@"aliases"];
	}
	return self;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAKMSResponse JSONKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"aliases": @"Aliases",
        @"nextMarker": @"NextMarker",
        @"truncated": @"Truncated"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)aliasesJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONArrayTransformerWithModelClass:[UAKMSAlias class]];
}

@end

#pragma clang diagnostic pop