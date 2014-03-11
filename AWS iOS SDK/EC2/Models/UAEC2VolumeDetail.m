//
//  UAEC2VolumeDetail.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2VolumeDetail.h"

@implementation UAEC2VolumeDetail

@synthesize size=_size;

- (id)initWithSize:(NSNumber *)size
{
	if (self = [self init])
	{
		[self setSize:size];
	}
	return self;
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Model queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"size": @"Size"
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
        @"size": @"ec2:Size"
    }];
    return [keyPaths copy];
}

- (void)setSize:(NSNumber *)size
{
	_size = size;
	
	if (![self.UA_dirtyProperties containsObject:@"size"])
		[self.UA_dirtyProperties addObject:@"size"];
}

+ (NSValueTransformer *)sizeXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

@end
