//
//  UAELBAttachLoadBalancerToSubnetsRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBAttachLoadBalancerToSubnetsRequest.h"
#import "UAELBAttachLoadBalancerToSubnetsResponse.h"

@interface UAELBAttachLoadBalancerToSubnetsRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAELBAttachLoadBalancerToSubnetsRequest

@synthesize action=_action, version=_version, loadBalancerName=_loadBalancerName, subnets=_subnets;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"AttachLoadBalancerToSubnets"];
		[self setVersion:@"2012-06-01"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAELBAttachLoadBalancerToSubnetsResponse class];
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
        @"subnets": @"Subnets.member"
    }];
    return [keyPaths copy];
}

- (void)addSubnet:(NSString *)subnet
{
	if (self.subnets == nil)
		[self setSubnets:[NSMutableArray array]];
	[self.subnets addObject:subnet];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAELBAttachLoadBalancerToSubnetsRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAELBAttachLoadBalancerToSubnetsRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAELBAttachLoadBalancerToSubnetsRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAELBAttachLoadBalancerToSubnetsRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
