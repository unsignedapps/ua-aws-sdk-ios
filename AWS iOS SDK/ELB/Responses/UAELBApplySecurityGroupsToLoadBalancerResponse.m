//
//  UAELBApplySecurityGroupsToLoadBalancerResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBApplySecurityGroupsToLoadBalancerResponse.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAELBApplySecurityGroupsToLoadBalancerResponse

@synthesize securityGroups=_securityGroups;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(securityGroupAtIndex:) propertyName:@"securityGroups"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addSecurityGroup:) propertyName:@"securityGroups"];
	}
	return self;
}

+ (NSString *)XPathPrefix
{
    return @"./ElasticLoadBalancing:ApplySecurityGroupsToLoadBalancerResponse/ElasticLoadBalancing:ApplySecurityGroupsToLoadBalancerResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAELBResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"securityGroups": @"ElasticLoadBalancing:SecurityGroups/ElasticLoadBalancing:member"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)securityGroupsXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForArrayOfStrings];
}

@end

#pragma clang diagnostic pop