//
//  UAASFilter.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASFilter.h"

@implementation UAASFilter

@synthesize name=_name, values=_values;

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAASModel queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"name": @"Name",
        @"values": @"Values.member"
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
    NSMutableDictionary *keyPaths = [[UAASModel XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"name": @"AutoScaling:Name",
        @"values": @"AutoScaling:Values.member/AutoScaling:Values"
    }];
    return [keyPaths copy];
}

- (NSString *)valueAtIndex:(NSUInteger)index
{
    if (self.values == nil || index >= ([self.values count]-1))
        return nil;

    return [self.values objectAtIndex:index];
}

- (void)setName:(NSString *)name
{
	_name = name;
	
	if (![self.UA_dirtyProperties containsObject:@"name"])
		[self.UA_dirtyProperties addObject:@"name"];
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
