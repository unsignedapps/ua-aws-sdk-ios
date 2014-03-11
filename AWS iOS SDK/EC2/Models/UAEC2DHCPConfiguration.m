//
//  UAEC2DHCPConfiguration.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DHCPConfiguration.h"

@implementation UAEC2DHCPConfiguration

@synthesize key=_key, values=_values;

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Model queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"key": @"Key",
        @"values": @"ValueSet"
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
        @"values": @"ec2:valueSet/ec2:item"
    }];
    return [keyPaths copy];
}

- (void)setKey:(NSString *)key
{
	_key = key;
	
	if (![self.UA_dirtyProperties containsObject:@"key"])
		[self.UA_dirtyProperties addObject:@"key"];
}

- (void)setValues:(NSMutableArray *)values
{
	_values = values;
	
	if (![self.UA_dirtyProperties containsObject:@"values"])
		[self.UA_dirtyProperties addObject:@"values"];
}

+ (NSValueTransformer *)valuesXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForArrayOfStrings];
}

@end
