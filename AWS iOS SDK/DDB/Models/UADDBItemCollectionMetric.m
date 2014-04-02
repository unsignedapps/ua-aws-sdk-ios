//
//  UADDBItemCollectionMetric.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBItemCollectionMetric.h"

@implementation UADDBItemCollectionMetric

@synthesize itemCollectionKey=_itemCollectionKey, sizeEstimateRangeGB=_sizeEstimateRangeGB;

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UADDBModel JSONKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"itemCollectionKey": @"ItemCollectionKey",
        @"sizeEstimateRangeGB": @"SizeEstimateRangeGB/SizeEstimateRangeGB"
    }];
    return [keyPaths copy];
}

- (NSDictionary *)itemCollectionKeyForAttributeName:(NSString *)attributeName
{
    if (self.itemCollectionKey == nil)
        return nil;

    return [self.itemCollectionKey objectForKey:attributeName];
}

- (NSNumber *)sizeEstimateRangeGBAtIndex:(NSUInteger)index
{
    if (self.sizeEstimateRangeGB == nil || index >= ([self.sizeEstimateRangeGB count]-1))
        return nil;

    return [self.sizeEstimateRangeGB objectAtIndex:index];
}

+ (NSValueTransformer *)itemCollectionKeyJSONTransformer
{
    return [NSValueTransformer UA_JSONDynamoDBDictionaryTransformer];
}

@end
