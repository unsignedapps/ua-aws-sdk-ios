//
//  UAELBPolicyAttribute.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBPolicyAttribute.h"

@implementation UAELBPolicyAttribute

@synthesize attributeName=_attributeName, attributeValue=_attributeValue;

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAELBModel queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"attributeName": @"AttributeName",
        @"attributeValue": @"AttributeValue"
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
    NSMutableDictionary *keyPaths = [[UAELBModel XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"attributeName": @"ElasticLoadBalancing:AttributeName",
        @"attributeValue": @"ElasticLoadBalancing:AttributeValue"
    }];
    return [keyPaths copy];
}

- (void)setAttributeName:(NSString *)attributeName
{
	_attributeName = attributeName;
	
	if (![self.UA_dirtyProperties containsObject:@"attributeName"])
		[self.UA_dirtyProperties addObject:@"attributeName"];
}

- (void)setAttributeValue:(NSString *)attributeValue
{
	_attributeValue = attributeValue;
	
	if (![self.UA_dirtyProperties containsObject:@"attributeValue"])
		[self.UA_dirtyProperties addObject:@"attributeValue"];
}

@end
