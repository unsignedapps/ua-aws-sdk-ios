//
//  UAASDescribePoliciesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASDescribePoliciesResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAASScalingPolicy.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAASDescribePoliciesResponse

@synthesize scalingPolicies=_scalingPolicies, nextToken=_nextToken;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(scalingPolicyAtIndex:) propertyName:@"scalingPolicies"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addScalingPolicy:) propertyName:@"scalingPolicies"];
	}
	return self;
}

+ (NSString *)XPathPrefix
{
    return @"./AutoScaling:DescribePoliciesResponse/AutoScaling:DescribePoliciesResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAASResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"scalingPolicies": @"AutoScaling:ScalingPolicies/AutoScaling:member",
        @"nextToken": @"AutoScaling:NextToken"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)scalingPoliciesXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAASScalingPolicy class]];
}

@end

#pragma clang diagnostic pop