//
//  UACWStatisticSet.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UACWStatisticSet.h"

@implementation UACWStatisticSet

@synthesize sampleCount=_sampleCount, sum=_sum, minimum=_minimum, maximum=_maximum;

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UACWModel queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"sampleCount": @"SampleCount",
        @"sum": @"Sum",
        @"minimum": @"Minimum",
        @"maximum": @"Maximum"
    }];
    return [keyPaths copy];
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
        @"sampleCount": @"cloudwatch:SampleCount",
        @"sum": @"cloudwatch:Sum",
        @"minimum": @"cloudwatch:Minimum",
        @"maximum": @"cloudwatch:Maximum"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)sampleCountXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)sumXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)minimumXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)maximumXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

@end
