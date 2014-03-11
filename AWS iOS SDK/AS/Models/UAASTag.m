//
//  UAASTag.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASTag.h"

@implementation UAASTag

@synthesize resourceID=_resourceID, resourceType=_resourceType, key=_key, value=_value, propagateAtLaunch=_propagateAtLaunch;

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAASModel queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"resourceID": @"ResourceId",
        @"resourceType": @"ResourceType",
        @"key": @"Key",
        @"value": @"Value",
        @"propagateAtLaunch": @"PropagateAtLaunch"
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
        @"resourceID": @"AutoScaling:ResourceId",
        @"resourceType": @"AutoScaling:ResourceType",
        @"key": @"AutoScaling:Key",
        @"value": @"AutoScaling:Value",
        @"propagateAtLaunch": @"AutoScaling:PropagateAtLaunch"
    }];
    return [keyPaths copy];
}

- (void)setResourceID:(NSString *)resourceID
{
	_resourceID = resourceID;
	
	if (![self.UA_dirtyProperties containsObject:@"resourceID"])
		[self.UA_dirtyProperties addObject:@"resourceID"];
}

- (void)setResourceType:(NSString *)resourceType
{
	_resourceType = resourceType;
	
	if (![self.UA_dirtyProperties containsObject:@"resourceType"])
		[self.UA_dirtyProperties addObject:@"resourceType"];
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

- (void)setPropagateAtLaunch:(BOOL)propagateAtLaunch
{
	_propagateAtLaunch = propagateAtLaunch;
	
	if (![self.UA_dirtyProperties containsObject:@"propagateAtLaunch"])
		[self.UA_dirtyProperties addObject:@"propagateAtLaunch"];
}

+ (NSValueTransformer *)propagateAtLaunchXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

@end
