//
//  UADDBScanFilter.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBScanFilter.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UADDBScanFilter

@synthesize attributeValueList=_attributeValueList, comparisonOperator=_comparisonOperator;

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UADDBModel JSONKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"attributeValueList": @"AttributeValueList",
        @"comparisonOperator": @"ComparisonOperator"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)comparisonOperatorJSONTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UADDBComparisonOperatorEQ), @(UADDBComparisonOperatorLE), @(UADDBComparisonOperatorLT), @(UADDBComparisonOperatorGE), @(UADDBComparisonOperatorGT), @(UADDBComparisonOperatorBeginsWith), @(UADDBComparisonOperatorBetween) ]
                                               stringValues:@[ @"EQ", @"LE", @"LT", @"GE", @"GT", @"BEGINS_WITH", @"BETWEEN" ]
                                               unknownValue:@(UADDBComparisonOperatorUnknown)];
}

@end

#pragma clang diagnostic pop