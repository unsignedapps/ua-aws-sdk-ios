//
//  UAELBDescribeLoadBalancerPoliciesRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBDescribeLoadBalancerPoliciesRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAELBDescribeLoadBalancerPoliciesResponse.h"

@interface UAELBDescribeLoadBalancerPoliciesRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAELBDescribeLoadBalancerPoliciesRequest

@synthesize action=_action, version=_version, loadBalancerName=_loadBalancerName, policyNames=_policyNames;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"DescribeLoadBalancerPolicies"];
		[self setVersion:@"2012-06-01"];
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(policyNameAtIndex:) propertyName:@"policyNames"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addPolicyName:) propertyName:@"policyNames"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAELBDescribeLoadBalancerPoliciesResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAELBRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"loadBalancerName": @"LoadBalancerName",
        @"policyNames": @"PolicyNames.member"
    }];
    return [keyPaths copy];
}

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAELBDescribeLoadBalancerPoliciesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAELBDescribeLoadBalancerPoliciesRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAELBDescribeLoadBalancerPoliciesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAELBDescribeLoadBalancerPoliciesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop