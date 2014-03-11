//
//  UAELBDescribeLoadBalancerPolicyTypesRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBDescribeLoadBalancerPolicyTypesRequest.h"
#import "UAELBDescribeLoadBalancerPolicyTypesResponse.h"

@interface UAELBDescribeLoadBalancerPolicyTypesRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAELBDescribeLoadBalancerPolicyTypesRequest

@synthesize action=_action, version=_version, policyTypeNames=_policyTypeNames;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"DescribeLoadBalancerPolicyTypes"];
		[self setVersion:@"2012-06-01"];
	}
	return self;
}

- (id)initWithPolicyTypeNames:(NSArray *)policyTypeNames
{
	if (self = [self init])
	{
		[self setPolicyTypeNames:[policyTypeNames mutableCopy]];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAELBDescribeLoadBalancerPolicyTypesResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAELBRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"policyTypeNames": @"PolicyTypeNames.member"
    }];
    return [keyPaths copy];
}

- (void)setAction:(NSString *)action
{
	_action = action;
	
	if (![self.UA_dirtyProperties containsObject:@"action"])
		[self.UA_dirtyProperties addObject:@"action"];
}

- (void)setVersion:(NSString *)version
{
	_version = version;
	
	if (![self.UA_dirtyProperties containsObject:@"version"])
		[self.UA_dirtyProperties addObject:@"version"];
}

- (void)setPolicyTypeNames:(NSMutableArray *)policyTypeNames
{
	_policyTypeNames = policyTypeNames;
	
	if (![self.UA_dirtyProperties containsObject:@"policyTypeNames"])
		[self.UA_dirtyProperties addObject:@"policyTypeNames"];
}

- (void)addPolicyTypeName:(NSString *)policyTypeName
{
	if (self.policyTypeNames == nil)
		[self setPolicyTypeNames:[NSMutableArray array]];
	[self.policyTypeNames addObject:policyTypeName];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAELBDescribeLoadBalancerPolicyTypesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAELBDescribeLoadBalancerPolicyTypesRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAELBDescribeLoadBalancerPolicyTypesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAELBDescribeLoadBalancerPolicyTypesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
