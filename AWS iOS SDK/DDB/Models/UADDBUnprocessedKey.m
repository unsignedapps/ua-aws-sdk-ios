//
//  UADDBUnprocessedKey.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBUnprocessedKey.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UADDBUnprocessedKey

@synthesize keys=_keys, attributesToGet=_attributesToGet, consistentRead=_consistentRead;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(keyAtIndex:) propertyName:@"keys"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(attributeToGetAtIndex:) propertyName:@"attributesToGet"];
	}
	return self;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UADDBModel JSONKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"keys": @"Keys/Keys",
        @"attributesToGet": @"AttributesToGet/AttributesToGet",
        @"consistentRead": @"ConsistentRead"
    }];
    return [keyPaths copy];
}

@end

#pragma clang diagnostic pop