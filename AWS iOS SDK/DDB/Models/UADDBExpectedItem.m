//
//  UADDBExpectedItem.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBExpectedItem.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UADDBExpectedItem

@synthesize value=_value, exists=_exists, comparisonOperator=_comparisonOperator, attributeValueList=_attributeValueList;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(attributeValueListAtIndex:) propertyName:@"attributeValueList"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addAttributeValueList:) propertyName:@"attributeValueList"];
	}
	return self;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UADDBModel JSONKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"value": @"Value",
        @"exists": @"Exists",
        @"comparisonOperator": @"ComparisonOperator",
        @"attributeValueList": @"AttributeValueList/AttributeValue"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)valueJSONTransformer
{
    return [NSValueTransformer UA_JSONDynamoDBValueTransformer];
}

@end

#pragma clang diagnostic pop