//
//  UAELBTagDescription.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBTagDescription.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAELBTag.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAELBTagDescription

@synthesize loadBalancerName=_loadBalancerName, tags=_tags;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(tagAtIndex:) propertyName:@"tags"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addTag:) propertyName:@"tags"];
	}
	return self;
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
        @"loadBalancerName": @"ElasticLoadBalancing:LoadBalancerName",
        @"tags": @"ElasticLoadBalancing:Tags/ElasticLoadBalancing:member"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)tagsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAELBTag class]];
}

+ (NSValueTransformer *)tagsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAELBTag class]];
}

@end

#pragma clang diagnostic pop