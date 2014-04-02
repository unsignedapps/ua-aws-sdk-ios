//
//  UADDBAttributeUpdate.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBAttributeUpdate.h"

@implementation UADDBAttributeUpdate

@synthesize value=_value, action=_action;

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UADDBModel JSONKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"value": @"Value",
        @"action": @"Action"
    }];
    return [keyPaths copy];
}

- (void)setValue:(id)value
{
	_value = value;

	if (![self.UA_dirtyProperties containsObject:@"value"])
		[self.UA_dirtyProperties addObject:@"value"];
}

- (void)setAction:(UADDBAttributeUpdateActionType)action
{
	_action = action;
	
	if (![self.UA_dirtyProperties containsObject:@"action"])
		[self.UA_dirtyProperties addObject:@"action"];
}

+ (NSValueTransformer *)valueJSONTransformer
{
    return [NSValueTransformer UA_JSONDynamoDBValueTransformer];
}

+ (NSValueTransformer *)actionJSONTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UADDBAttributeUpdateActionTypePut), @(UADDBAttributeUpdateActionTypeDelete), @(UADDBAttributeUpdateActionTypeAdd) ]
                                               stringValues:@[ @"PUT", @"DELETE", @"ADD" ]
                                               unknownValue:@(UADDBAttributeUpdateActionTypeUnknown)];
}

@end
