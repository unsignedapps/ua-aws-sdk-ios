//
//  UAASDescribeAdjustmentTypesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
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

- (UAASAdjustmentType *)adjustmentTypeAtIndex:(NSUInteger)index
{
    if (self.adjustmentTypes == nil || index >= ([self.adjustmentTypes count]-1))
        return nil;

    return [self.adjustmentTypes objectAtIndex:index];
}

+ (NSValueTransformer *)adjustmentTypesXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAASAdjustmentType class]];
}

@end
