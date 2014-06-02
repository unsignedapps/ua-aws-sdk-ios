//
//  UADDBProjection.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBProjection.h"

@implementation UADDBProjection

@synthesize projectionType=_projectionType, nonKeyAttributes=_nonKeyAttributes;

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UADDBModel JSONKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"projectionType": @"ProjectionType",
        @"nonKeyAttributes": @"NonKeyAttributes/NonKeyAttributes"
    }];
    return [keyPaths copy];
}

- (NSString *)nonKeyAttributeAtIndex:(NSUInteger)index
{
    if (self.nonKeyAttributes == nil || index >= ([self.nonKeyAttributes count]-1))
        return nil;

    return [self.nonKeyAttributes objectAtIndex:index];
}

+ (NSValueTransformer *)projectionTypeJSONTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UADDBProjectionTypeKeysOnly), @(UADDBProjectionTypeInclude), @(UADDBProjectionTypeAll) ]
                                               stringValues:@[ @"KEYS_ONLY", @"INCLUDE", @"ALL" ]
                                               unknownValue:@(UADDBProjectionTypeUnknown)];
}

@end
