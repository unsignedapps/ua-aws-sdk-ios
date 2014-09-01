//
//  UACWMetric.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UACWMetric.h"
#import "UAAWSAdditionalAccessors.h"
#import "UACWDimension.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UACWMetric

@synthesize namespace=_namespace, metricName=_metricName, dimensions=_dimensions;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(dimensionAtIndex:) propertyName:@"dimensions"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addDimension:) propertyName:@"dimensions"];
	}
	return self;
}

+ (NSString *)XPathPrefix
{
    return @"./";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UACWModel XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"namespace": @"cloudwatch:Namespace",
        @"metricName": @"cloudwatch:MetricName",
        @"dimensions": @"cloudwatch:Dimensions/cloudwatch:member"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)dimensionsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UACWDimension class]];
}

+ (NSValueTransformer *)dimensionsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UACWDimension class]];
}

@end

#pragma clang diagnostic pop