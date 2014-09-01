//
//  UAASDescribeAdjustmentTypesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASDescribeAdjustmentTypesResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAASAdjustmentType.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAASDescribeAdjustmentTypesResponse

@synthesize adjustmentTypes=_adjustmentTypes;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(adjustmentTypeAtIndex:) propertyName:@"adjustmentTypes"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addAdjustmentType:) propertyName:@"adjustmentTypes"];
	}
	return self;
}

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
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAASAdjustmentType class]];
}

@end

#pragma clang diagnostic pop