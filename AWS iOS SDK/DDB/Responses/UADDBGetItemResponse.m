//
//  UADDBGetItemResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBGetItemResponse.h"
#import "UADDBConsumedCapacity.h"

@implementation UADDBGetItemResponse

@synthesize item=_item, consumedCapacity=_consumedCapacity;

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UADDBResponse JSONKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"item": @"Item",
        @"consumedCapacity": @"ConsumedCapacity"
    }];
    return [keyPaths copy];
}

- (NSDictionary *)itemValueForAttributeName:(NSString *)attributeName
{
    if (self.item == nil)
        return nil;

    return [self.item objectForKey:attributeName];
}

+ (NSValueTransformer *)itemJSONTransformer
{
    return [NSValueTransformer UA_JSONDynamoDBDictionaryTransformer];
}

+ (NSValueTransformer *)consumedCapacityJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONDictionaryTransformerWithModelClass:[UADDBConsumedCapacity class]];
}

@end
