//
//  UADDBExpectedItem.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBExpectedItem.h"

@implementation UADDBExpectedItem

@synthesize value=_value, exists=_exists;

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UADDBModel JSONKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"value": @"Value",
        @"exists": @"Exists"
    }];
    return [keyPaths copy];
}

- (void)setValue:(id)value
{
	_value = value;

	if (![self.UA_dirtyProperties containsObject:@"value"])
		[self.UA_dirtyProperties addObject:@"value"];
}

- (void)setExists:(BOOL)exists
{
	_exists = exists;
	
	if (![self.UA_dirtyProperties containsObject:@"exists"])
		[self.UA_dirtyProperties addObject:@"exists"];
}

+ (NSValueTransformer *)valueJSONTransformer
{
    return [NSValueTransformer UA_JSONDynamoDBValueTransformer];
}

@end
