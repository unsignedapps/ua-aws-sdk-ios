//
//  UAELBAccessLog.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBAccessLog.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAELBAccessLog

@synthesize enabled=_enabled, s3BucketName=_s3BucketName, emitInterval=_emitInterval, s3BucketPrefix=_s3BucketPrefix;

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAELBModel queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"enabled": @"Enabled",
        @"s3BucketName": @"S3BucketName",
        @"emitInterval": @"EmitInterval",
        @"s3BucketPrefix": @"S3BucketPrefix"
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
    NSMutableDictionary *keyPaths = [[UAELBModel XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"enabled": @"ElasticLoadBalancing:Enabled",
        @"s3BucketName": @"ElasticLoadBalancing:S3BucketName",
        @"emitInterval": @"ElasticLoadBalancing:EmitInterval",
        @"s3BucketPrefix": @"ElasticLoadBalancing:S3BucketPrefix"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)enabledQueryStringTransformer
{
    return [UAMTLValueTransformer UA_JSONTransformerForBooleanString];
}

+ (NSValueTransformer *)enabledXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

+ (NSValueTransformer *)emitIntervalXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

@end

#pragma clang diagnostic pop