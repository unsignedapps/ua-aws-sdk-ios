//
//  UAEC2PortRange.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2PortRange.h"

@implementation UAEC2PortRange

@synthesize from=_from, to=_to;

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Model queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"from": @"From",
        @"to": @"To"
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
        @"from": @"ec2:from",
        @"to": @"ec2:to"
    }];
    return [keyPaths copy];
}

- (void)setFrom:(NSNumber *)from
{
	_from = from;
	
	if (![self.UA_dirtyProperties containsObject:@"from"])
		[self.UA_dirtyProperties addObject:@"from"];
}

- (void)setTo:(NSNumber *)to
{
	_to = to;
	
	if (![self.UA_dirtyProperties containsObject:@"to"])
		[self.UA_dirtyProperties addObject:@"to"];
}

+ (NSValueTransformer *)fromXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)toXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

@end
