//
//  UAELBHealthCheck.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBHealthCheck.h"

@implementation UAELBHealthCheck

@synthesize target=_target, interval=_interval, timeout=_timeout, unhealthyThreshold=_unhealthyThreshold, healthyThreshold=_healthyThreshold;

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAELBModel queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"target": @"Target",
        @"interval": @"Interval",
        @"timeout": @"Timeout",
        @"unhealthyThreshold": @"UnhealthyThreshold",
        @"healthyThreshold": @"HealthyThreshold"
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
        @"target": @"ElasticLoadBalancing:Target",
        @"interval": @"ElasticLoadBalancing:Interval",
        @"timeout": @"ElasticLoadBalancing:Timeout",
        @"unhealthyThreshold": @"ElasticLoadBalancing:UnhealthyThreshold",
        @"healthyThreshold": @"ElasticLoadBalancing:HealthyThreshold"
    }];
    return [keyPaths copy];
}

- (void)setTarget:(NSString *)target
{
	_target = target;
	
	if (![self.UA_dirtyProperties containsObject:@"target"])
		[self.UA_dirtyProperties addObject:@"target"];
}

- (void)setInterval:(NSNumber *)interval
{
	_interval = interval;
	
	if (![self.UA_dirtyProperties containsObject:@"interval"])
		[self.UA_dirtyProperties addObject:@"interval"];
}

- (void)setTimeout:(NSNumber *)timeout
{
	_timeout = timeout;
	
	if (![self.UA_dirtyProperties containsObject:@"timeout"])
		[self.UA_dirtyProperties addObject:@"timeout"];
}

- (void)setUnhealthyThreshold:(NSNumber *)unhealthyThreshold
{
	_unhealthyThreshold = unhealthyThreshold;
	
	if (![self.UA_dirtyProperties containsObject:@"unhealthyThreshold"])
		[self.UA_dirtyProperties addObject:@"unhealthyThreshold"];
}

- (void)setHealthyThreshold:(NSNumber *)healthyThreshold
{
	_healthyThreshold = healthyThreshold;
	
	if (![self.UA_dirtyProperties containsObject:@"healthyThreshold"])
		[self.UA_dirtyProperties addObject:@"healthyThreshold"];
}

+ (NSValueTransformer *)intervalXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)timeoutXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)unhealthyThresholdXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)healthyThresholdXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

@end
