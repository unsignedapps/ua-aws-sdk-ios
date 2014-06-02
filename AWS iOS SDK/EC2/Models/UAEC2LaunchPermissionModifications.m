//
//  UAEC2LaunchPermissionModifications.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2LaunchPermissionModifications.h"
#import "UAEC2LaunchPermission.h"

@implementation UAEC2LaunchPermissionModifications

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

- (UAEC2LaunchPermission *)addAtIndex:(NSUInteger)index
{
    if (self.add == nil || index >= ([self.add count]-1))
        return nil;

    return [self.add objectAtIndex:index];
}

- (UAEC2LaunchPermission *)removeAtIndex:(NSUInteger)index
{
    if (self.remove == nil || index >= ([self.remove count]-1))
        return nil;

    return [self.remove objectAtIndex:index];
}

+ (NSValueTransformer *)addQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2LaunchPermission class]];
}

+ (NSValueTransformer *)removeQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2LaunchPermission class]];
}

+ (NSValueTransformer *)addXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2LaunchPermission class]];
}

+ (NSValueTransformer *)removeXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2LaunchPermission class]];
}

@end
