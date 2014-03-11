//
//  UAEC2Options.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Options.h"

@implementation UAEC2Options

@synthesize staticRoutesOnly=_staticRoutesOnly;

- (id)initWithStaticRoutesOnly:(BOOL)staticRoutesOnly
{
	if (self = [self init])
	{
		[self setStaticRoutesOnly:staticRoutesOnly];
	}
	return self;
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Model queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"staticRoutesOnly": @"StaticRoutesOnly"
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
        @"staticRoutesOnly": @"ec2:staticRoutesOnly"
    }];
    return [keyPaths copy];
}

- (void)setStaticRoutesOnly:(BOOL)staticRoutesOnly
{
	_staticRoutesOnly = staticRoutesOnly;
	
	if (![self.UA_dirtyProperties containsObject:@"staticRoutesOnly"])
		[self.UA_dirtyProperties addObject:@"staticRoutesOnly"];
}

+ (NSValueTransformer *)staticRoutesOnlyQueryStringTransformer
{
    return [UAMTLValueTransformer UA_JSONTransformerForBooleanString];
}

+ (NSValueTransformer *)staticRoutesOnlyXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

@end
