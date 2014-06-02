//
//  UADDBKeyCondition.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBKeyCondition.h"

@implementation UADDBKeyCondition

@synthesize attributeValueList=_attributeValueList, comparisonOperator=_comparisonOperator;

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UADDBModel JSONKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"attributeValueList": @"AttributeValueList/AttributeValue",
        @"comparisonOperator": @"ComparisonOperator"
    }];
    return [keyPaths copy];
}

- (NSMutableDictionary *)attributeValueListAtIndex:(NSUInteger)index
{
    if (self.attributeValueList == nil || index >= ([self.attributeValueList count]-1))
        return nil;

    return [self.attributeValueList objectAtIndex:index];
}

+ (NSValueTransformer *)comparisonOperatorJSONTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UADDBComparisonOperatorEQ), @(UADDBComparisonOperatorLE), @(UADDBComparisonOperatorLT), @(UADDBComparisonOperatorGE), @(UADDBComparisonOperatorGT), @(UADDBComparisonOperatorBeginsWith), @(UADDBComparisonOperatorBetween) ]
                                               stringValues:@[ @"EQ", @"LE", @"LT", @"GE", @"GT", @"BEGINS_WITH", @"BETWEEN" ]
                                               unknownValue:@(UADDBComparisonOperatorUnknown)];
}

@end