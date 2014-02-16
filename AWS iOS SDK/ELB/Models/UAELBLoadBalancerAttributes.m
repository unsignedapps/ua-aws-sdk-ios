//
//  UAELBLoadBalancerAttributes.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBLoadBalancerAttributes.h"

@implementation UAELBLoadBalancerAttributes

@synthesize crossZoneLoadBalancing=_crossZoneLoadBalancing;

- (id)initWithCrossZoneLoadBalancing:(BOOL)crossZoneLoadBalancing
{
	if (self = [self init])
	{
		[self setCrossZoneLoadBalancing:crossZoneLoadBalancing];
	}
	return self;
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAELBModel queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"crossZoneLoadBalancing": @"CrossZoneLoadBalancing.Enabled"
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
        @"crossZoneLoadBalancing": @"ElasticLoadBalancing:CrossZoneLoadBalancing/ElasticLoadBalancing:Enabled"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)crossZoneLoadBalancingXMLTransformer
{
    return [MTLValueTransformer UA_XMLTransformerForBooleanString];
}

@end
