//
//  UADDBKeySchema.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBKeySchema.h"

@implementation UADDBKeySchema

@synthesize attributeName=_attributeName, keyType=_keyType;

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UADDBModel JSONKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"attributeName": @"AttributeName",
        @"keyType": @"KeyType"
    }];
    return [keyPaths copy];
}

- (void)setAttributeName:(NSString *)attributeName
{
	_attributeName = attributeName;
	
	if (![self.UA_dirtyProperties containsObject:@"attributeName"])
		[self.UA_dirtyProperties addObject:@"attributeName"];
}

- (void)setKeyType:(UADDBKeyType)keyType
{
	_keyType = keyType;
	
	if (![self.UA_dirtyProperties containsObject:@"keyType"])
		[self.UA_dirtyProperties addObject:@"keyType"];
}

+ (NSValueTransformer *)keyTypeJSONTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UADDBKeyTypeHash), @(UADDBKeyTypeRange) ]
                                               stringValues:@[ @"HASH", @"RANGE" ]
                                               unknownValue:@(UADDBKeyTypeUnknown)];
}

@end
