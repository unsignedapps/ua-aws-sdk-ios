//
//  UAELBDeleteLoadBalancerListenersRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBDeleteLoadBalancerListenersRequest.h"
#import "UAELBDeleteLoadBalancerListenersResponse.h"

@interface UAELBDeleteLoadBalancerListenersRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAELBDeleteLoadBalancerListenersRequest

@synthesize action=_action, version=_version, loadBalancerName=_loadBalancerName, loadBalancerPorts=_loadBalancerPorts;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"DeleteLoadBalancerListeners"];
		[self setVersion:@"2012-06-01"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAELBDeleteLoadBalancerListenersResponse class];
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
        @"loadBalancerPorts": @"LoadBalancerPorts.member"
    }];
    return [keyPaths copy];
}

- (NSNumber *)loadBalancerPortAtIndex:(NSUInteger)index
{
    if (self.loadBalancerPorts == nil || index >= ([self.loadBalancerPorts count]-1))
        return nil;

    return [self.loadBalancerPorts objectAtIndex:index];
}

- (void)addLoadBalancerPort:(NSNumber *)loadBalancerPort
{
	if (self.loadBalancerPorts == nil)
		[self setLoadBalancerPorts:[NSMutableArray array]];
	[self.loadBalancerPorts addObject:loadBalancerPort];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAELBDeleteLoadBalancerListenersRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAELBDeleteLoadBalancerListenersRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAELBDeleteLoadBalancerListenersRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAELBDeleteLoadBalancerListenersRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
