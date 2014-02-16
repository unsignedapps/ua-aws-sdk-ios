//
//  UAELBSetLoadBalancerPoliciesForBackendServerRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBSetLoadBalancerPoliciesForBackendServerRequest.h"
#import "UAELBSetLoadBalancerPoliciesForBackendServerResponse.h"

@interface UAELBSetLoadBalancerPoliciesForBackendServerRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAELBSetLoadBalancerPoliciesForBackendServerRequest

@synthesize action=_action, version=_version, loadBalancerName=_loadBalancerName, instancePort=_instancePort, policyNames=_policyNames;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"SetLoadBalancerPoliciesForBackendServer"];
		[self setVersion:@"2012-06-01"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAELBSetLoadBalancerPoliciesForBackendServerResponse class];
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
        @"instancePort": @"InstancePort",
        @"policyNames": @"PolicyNames.member"
    }];
    return [keyPaths copy];
}

- (void)addPolicyName:(NSString *)policyName
{
	if (self.policyNames == nil)
		[self setPolicyNames:[NSMutableArray array]];
	[self.policyNames addObject:policyName];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAELBSetLoadBalancerPoliciesForBackendServerRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAELBSetLoadBalancerPoliciesForBackendServerRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAELBSetLoadBalancerPoliciesForBackendServerRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAELBSetLoadBalancerPoliciesForBackendServerRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
