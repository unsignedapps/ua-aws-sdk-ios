//
//  UAELBDescribeLoadBalancersRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBDescribeLoadBalancersRequest.h"
#import "UAELBDescribeLoadBalancersResponse.h"

@interface UAELBDescribeLoadBalancersRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAELBDescribeLoadBalancersRequest

@synthesize action=_action, version=_version, loadBalancerNames=_loadBalancerNames, marker=_marker;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"DescribeLoadBalancers"];
		[self setVersion:@"2012-06-01"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAELBDescribeLoadBalancersResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAELBRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"loadBalancerNames": @"LoadBalancerNames.member",
        @"marker": @"Marker"
    }];
    return [keyPaths copy];
}

- (NSString *)loadBalancerNameAtIndex:(NSUInteger)index
{
    if (self.loadBalancerNames == nil || index >= ([self.loadBalancerNames count]-1))
        return nil;

    return [self.loadBalancerNames objectAtIndex:index];
}

- (void)addLoadBalancerName:(NSString *)loadBalancerName
{
	if (self.loadBalancerNames == nil)
		[self setLoadBalancerNames:[NSMutableArray array]];
	[self.loadBalancerNames addObject:loadBalancerName];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAELBDescribeLoadBalancersRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAELBDescribeLoadBalancersRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAELBDescribeLoadBalancersRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAELBDescribeLoadBalancersRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
