//
//  UADDBProjection.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBProjection.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UADDBProjection

@synthesize projectionType=_projectionType, nonKeyAttributes=_nonKeyAttributes;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(nonKeyAttributeAtIndex:) propertyName:@"nonKeyAttributes"];
	}
	return self;
}

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

+ (NSValueTransformer *)projectionTypeJSONTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UADDBProjectionTypeKeysOnly), @(UADDBProjectionTypeInclude), @(UADDBProjectionTypeAll) ]
                                               stringValues:@[ @"KEYS_ONLY", @"INCLUDE", @"ALL" ]
                                               unknownValue:@(UADDBProjectionTypeUnknown)];
}

@end

#pragma clang diagnostic pop