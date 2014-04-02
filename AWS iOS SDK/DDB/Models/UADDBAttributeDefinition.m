//
//  UADDBAttributeDefinition.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBAttributeDefinition.h"

@implementation UADDBAttributeDefinition

@synthesize attributeName=_attributeName, attributeType=_attributeType;

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UADDBModel JSONKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"attributeName": @"AttributeName",
        @"attributeType": @"AttributeType"
    }];
    return [keyPaths copy];
}

- (void)setAttributeName:(NSString *)attributeName
{
	_attributeName = attributeName;
	
	if (![self.UA_dirtyProperties containsObject:@"attributeName"])
		[self.UA_dirtyProperties addObject:@"attributeName"];
}

- (void)setAttributeType:(UADDBAttributeType)attributeType
{
	_attributeType = attributeType;
	
	if (![self.UA_dirtyProperties containsObject:@"attributeType"])
		[self.UA_dirtyProperties addObject:@"attributeType"];
}

+ (NSValueTransformer *)attributeTypeJSONTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UADDBAttributeTypeString), @(UADDBAttributeTypeNumber), @(UADDBAttributeTypeBinary) ]
                                               stringValues:@[ @"String", @"Number", @"Binary" ]
                                               unknownValue:@(UADDBAttributeTypeUnknown)];
}

@end
