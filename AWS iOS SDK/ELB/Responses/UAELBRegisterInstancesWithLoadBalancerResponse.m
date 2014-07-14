//
//  UAELBRegisterInstancesWithLoadBalancerResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBRegisterInstancesWithLoadBalancerResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAELBInstance.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAELBRegisterInstancesWithLoadBalancerResponse

@synthesize instances=_instances;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(instanceAtIndex:) propertyName:@"instances"];
	}
	return self;
}

+ (NSString *)XPathPrefix
{
    return @"./ElasticLoadBalancing:RegisterInstancesWithLoadBalancerResponse/ElasticLoadBalancing:RegisterInstancesWithLoadBalancerResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAELBResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"instances": @"ElasticLoadBalancing:Instances/ElasticLoadBalancing:member"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)instancesXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAELBInstance class]];
}

@end

#pragma clang diagnostic pop