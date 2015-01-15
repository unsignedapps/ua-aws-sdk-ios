//
//  UAKMSListKeysResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAKMSListKeysResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAKMSKey.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAKMSListKeysResponse

@synthesize keys=_keys, nextMarker=_nextMarker, truncated=_truncated;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(keyAtIndex:) propertyName:@"keys"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addKey:) propertyName:@"keys"];
	}
	return self;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAKMSResponse JSONKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"keys": @"Keys",
        @"nextMarker": @"NextMarker",
        @"truncated": @"Truncated"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)keysJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONArrayTransformerWithModelClass:[UAKMSKey class]];
}

@end

#pragma clang diagnostic pop