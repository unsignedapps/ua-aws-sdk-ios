//
//  UADDBAttributeDefinition.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBAttributeDefinition.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UADDBAttributeDefinition

@synthesize attributeName=_attributeName, attributeType=_attributeType;

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UADDBModel JSONKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"attributeName": @"AttributeName",
        @"attributeType": @"AttributeType"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)attributeTypeJSONTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UADDBAttributeTypeString), @(UADDBAttributeTypeNumber), @(UADDBAttributeTypeBinary) ]
                                               stringValues:@[ @"String", @"Number", @"Binary" ]
                                               unknownValue:@(UADDBAttributeTypeUnknown)];
}

@end

#pragma clang diagnostic pop