//
//  UAEC2CreateVolumePermissionModifications.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2CreateVolumePermissionModifications.h"
#import "UAEC2CreateVolumePermission.h"

@implementation UAEC2CreateVolumePermissionModifications

@synthesize add=_add, remove=_remove;

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Model queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"add": @"Add",
        @"remove": @"Remove"
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
        @"add": @"ec2:Add/ec2:Add",
        @"remove": @"ec2:Remove/ec2:Remove"
    }];
    return [keyPaths copy];
}

- (void)setAdd:(NSMutableArray *)add
{
	_add = add;
	
	if (![self.UA_dirtyProperties containsObject:@"add"])
		[self.UA_dirtyProperties addObject:@"add"];
}

- (void)setRemove:(NSMutableArray *)remove
{
	_remove = remove;
	
	if (![self.UA_dirtyProperties containsObject:@"remove"])
		[self.UA_dirtyProperties addObject:@"remove"];
}

+ (NSValueTransformer *)addQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2CreateVolumePermission class]];
}

+ (NSValueTransformer *)removeQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2CreateVolumePermission class]];
}

+ (NSValueTransformer *)addXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2CreateVolumePermission class]];
}

+ (NSValueTransformer *)removeXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2CreateVolumePermission class]];
}

@end
