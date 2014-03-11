//
//  UAEC2Tag.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Tag.h"

@implementation UAEC2Tag

@synthesize key=_key, value=_value;

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Model queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"key": @"Key",
        @"value": @"Value"
    }];
    return [keyPaths copy];
}

+ (NSString *)XPathPrefix
{
    return @"./";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Model XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"key": @"ec2:key",
        @"value": @"ec2:value"
    }];
    return [keyPaths copy];
}

- (void)setKey:(NSString *)key
{
	_key = key;
	
	if (![self.UA_dirtyProperties containsObject:@"key"])
		[self.UA_dirtyProperties addObject:@"key"];
}

- (void)setValue:(NSString *)value
{
	_value = value;
	
	if (![self.UA_dirtyProperties containsObject:@"value"])
		[self.UA_dirtyProperties addObject:@"value"];
}

@end
