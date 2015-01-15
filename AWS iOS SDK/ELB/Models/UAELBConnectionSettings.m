//
//  UAELBConnectionSettings.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBConnectionSettings.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAELBConnectionSettings

@synthesize idleTimeout=_idleTimeout;

- (id)initWithIdleTimeout:(NSNumber *)idleTimeout
{
	if ((self = [self init]))
	{
		[self setIdleTimeout:idleTimeout];
	}
	return self;
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAELBModel queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"idleTimeout": @"IdleTimeout"
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
        @"idleTimeout": @"ElasticLoadBalancing:IdleTimeout"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)idleTimeoutXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

@end

#pragma clang diagnostic pop