//
//  UAELBDetachLoadBalancerFromSubnetsRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBDetachLoadBalancerFromSubnetsRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAELBDetachLoadBalancerFromSubnetsResponse.h"

@interface UAELBDetachLoadBalancerFromSubnetsRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAELBDetachLoadBalancerFromSubnetsRequest

@synthesize action=_action, version=_version, loadBalancerName=_loadBalancerName, subnets=_subnets;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"DetachLoadBalancerFromSubnets"];
		[self setVersion:@"2012-06-01"];
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(subnetAtIndex:) propertyName:@"subnets"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addSubnet:) propertyName:@"subnets"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAELBDetachLoadBalancerFromSubnetsResponse class];
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

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAELBDetachLoadBalancerFromSubnetsRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAELBDetachLoadBalancerFromSubnetsRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAELBDetachLoadBalancerFromSubnetsRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAELBDetachLoadBalancerFromSubnetsRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop