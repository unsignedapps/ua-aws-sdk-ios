//
//  UAASDescribeAdjustmentTypesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAASDescribeAdjustmentTypesResponse.h"
#import "UAASAdjustmentType.h"

@implementation UAASDescribeAdjustmentTypesResponse

@synthesize adjustmentTypes=_adjustmentTypes;

+ (NSString *)XPathPrefix
{
    return @"./AutoScaling:DescribeAdjustmentTypesResponse/AutoScaling:DescribeAdjustmentTypesResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAASResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"adjustmentTypes": @"AutoScaling:AdjustmentTypes/AutoScaling:member"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)adjustmentTypesXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAASAdjustmentType class]];
}

@end
