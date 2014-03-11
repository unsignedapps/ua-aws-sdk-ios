//
//  UACWStatisticSet.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
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

- (void)setSampleCount:(NSNumber *)sampleCount
{
	_sampleCount = sampleCount;
	
	if (![self.UA_dirtyProperties containsObject:@"sampleCount"])
		[self.UA_dirtyProperties addObject:@"sampleCount"];
}

- (void)setSum:(NSNumber *)sum
{
	_sum = sum;
	
	if (![self.UA_dirtyProperties containsObject:@"sum"])
		[self.UA_dirtyProperties addObject:@"sum"];
}

- (void)setMinimum:(NSNumber *)minimum
{
	_minimum = minimum;
	
	if (![self.UA_dirtyProperties containsObject:@"minimum"])
		[self.UA_dirtyProperties addObject:@"minimum"];
}

- (void)setMaximum:(NSNumber *)maximum
{
	_maximum = maximum;
	
	if (![self.UA_dirtyProperties containsObject:@"maximum"])
		[self.UA_dirtyProperties addObject:@"maximum"];
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
