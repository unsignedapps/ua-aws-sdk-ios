//
//  UAELBAccessLog.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBAccessLog.h"

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

- (void)setEnabled:(BOOL)enabled
{
	_enabled = enabled;
	
	if (![self.UA_dirtyProperties containsObject:@"enabled"])
		[self.UA_dirtyProperties addObject:@"enabled"];
}

- (void)setS3BucketName:(NSString *)s3BucketName
{
	_s3BucketName = s3BucketName;
	
	if (![self.UA_dirtyProperties containsObject:@"s3BucketName"])
		[self.UA_dirtyProperties addObject:@"s3BucketName"];
}

- (void)setEmitInterval:(NSNumber *)emitInterval
{
	_emitInterval = emitInterval;
	
	if (![self.UA_dirtyProperties containsObject:@"emitInterval"])
		[self.UA_dirtyProperties addObject:@"emitInterval"];
}

- (void)setS3BucketPrefix:(NSString *)s3BucketPrefix
{
	_s3BucketPrefix = s3BucketPrefix;
	
	if (![self.UA_dirtyProperties containsObject:@"s3BucketPrefix"])
		[self.UA_dirtyProperties addObject:@"s3BucketPrefix"];
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
