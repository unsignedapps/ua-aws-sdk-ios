//
//  UADDBRequestItem.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBRequestItem.h"

@implementation UADDBRequestItem

@synthesize keys=_keys, attributesToGet=_attributesToGet, consistentRead=_consistentRead;

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UADDBModel JSONKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"keys": @"Keys/Keys",
        @"attributesToGet": @"AttributesToGet/AttributesToGet",
        @"consistentRead": @"ConsistentRead"
    }];
    return [keyPaths copy];
}

- (NSMutableDictionary *)keyAtIndex:(NSUInteger)index
{
    if (self.keys == nil || index >= ([self.keys count]-1))
        return nil;

    return [self.keys objectAtIndex:index];
}

- (NSString *)attributeToGetAtIndex:(NSUInteger)index
{
    if (self.attributesToGet == nil || index >= ([self.attributesToGet count]-1))
        return nil;

    return [self.attributesToGet objectAtIndex:index];
}

@end
