//
//  UAELBPolicyAttributeDescription.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBPolicyAttributeDescription.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAELBPolicyAttributeDescription

@synthesize attributeName=_attributeName, attributeValue=_attributeValue;

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
        @"attributeValue": @"ElasticLoadBalancing:AttributeValue"
    }];
    return [keyPaths copy];
}

@end

#pragma clang diagnostic pop