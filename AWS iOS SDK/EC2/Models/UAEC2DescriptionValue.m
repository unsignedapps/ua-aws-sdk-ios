//
//  UAEC2DescriptionValue.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescriptionValue.h"

@implementation UAEC2DescriptionValue

@synthesize value=_value;

- (id)initWithValue:(NSString *)value
{
	if (self = [self init])
	{
		[self setValue:value];
	}
	return self;
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Model queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
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
        @"value": @"ec2:Value"
    }];
    return [keyPaths copy];
}

- (void)setValue:(NSString *)value
{
	_value = value;
	
	if (![self.UA_dirtyProperties containsObject:@"value"])
		[self.UA_dirtyProperties addObject:@"value"];
}

@end
