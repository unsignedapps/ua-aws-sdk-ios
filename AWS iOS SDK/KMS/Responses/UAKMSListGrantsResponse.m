//
//  UAKMSListGrantsResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAKMSListGrantsResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAKMSGrant.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAKMSListGrantsResponse

@synthesize grants=_grants, nextMarker=_nextMarker, truncated=_truncated;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(grantAtIndex:) propertyName:@"grants"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addGrant:) propertyName:@"grants"];
	}
	return self;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAKMSResponse JSONKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"grants": @"Grants",
        @"nextMarker": @"NextMarker",
        @"truncated": @"Truncated"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)grantsJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONArrayTransformerWithModelClass:[UAKMSGrant class]];
}

@end

#pragma clang diagnostic pop