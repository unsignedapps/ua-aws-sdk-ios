//
//  UAELBPolicyAttributeTypeDescription.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBPolicyAttributeTypeDescription.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAELBPolicyAttributeTypeDescription

@synthesize attributeName=_attributeName, attributeType=_attributeType, descriptionValue=_descriptionValue, defaultValue=_defaultValue, cardinality=_cardinality;

+ (NSString *)XPathPrefix
{
    return @"./";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAELBModel XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"attributeName": @"ElasticLoadBalancing:AttributeName",
        @"attributeType": @"ElasticLoadBalancing:AttributeType",
        @"descriptionValue": @"ElasticLoadBalancing:Description",
        @"defaultValue": @"ElasticLoadBalancing:DefaultValue",
        @"cardinality": @"ElasticLoadBalancing:Cardinality"
    }];
    return [keyPaths copy];
}

@end

#pragma clang diagnostic pop