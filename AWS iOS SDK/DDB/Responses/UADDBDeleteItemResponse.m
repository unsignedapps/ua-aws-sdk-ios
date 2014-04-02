//
//  UADDBDeleteItemResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBDeleteItemResponse.h"
#import "UADDBConsumedCapacity.h"
#import "UADDBItemCollectionMetric.h"

@implementation UADDBDeleteItemResponse

@synthesize attributes=_attributes, consumedCapacity=_consumedCapacity, itemCollectionMetrics=_itemCollectionMetrics;

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UADDBResponse JSONKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"attributes": @"Attributes",
        @"consumedCapacity": @"ConsumedCapacity",
        @"itemCollectionMetrics": @"ItemCollectionMetrics"
    }];
    return [keyPaths copy];
}

- (NSDictionary *)attributeForAttributeName:(NSString *)attributeName
{
    if (self.attributes == nil)
        return nil;

    return [self.attributes objectForKey:attributeName];
}

+ (NSValueTransformer *)attributesJSONTransformer
{
    return [NSValueTransformer UA_JSONDynamoDBDictionaryTransformer];
}

+ (NSValueTransformer *)consumedCapacityJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONDictionaryTransformerWithModelClass:[UADDBConsumedCapacity class]];
}

+ (NSValueTransformer *)itemCollectionMetricsJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONDictionaryTransformerWithModelClass:[UADDBItemCollectionMetric class]];
}

@end
