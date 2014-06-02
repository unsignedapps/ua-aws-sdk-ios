//
//  UAELBRegisterInstancesWithLoadBalancerRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBRegisterInstancesWithLoadBalancerRequest.h"
#import "UAELBRegisterInstancesWithLoadBalancerResponse.h"
#import "UAELBInstance.h"

@interface UAELBRegisterInstancesWithLoadBalancerRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAELBRegisterInstancesWithLoadBalancerRequest

@synthesize action=_action, version=_version, loadBalancerName=_loadBalancerName, instances=_instances;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"RegisterInstancesWithLoadBalancer"];
		[self setVersion:@"2012-06-01"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAELBRegisterInstancesWithLoadBalancerResponse class];
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
        @"instances": @"Instances.member"
    }];
    return [keyPaths copy];
}

- (UAELBInstance *)instanceAtIndex:(NSUInteger)index
{
    if (self.instances == nil || index >= ([self.instances count]-1))
        return nil;

    return [self.instances objectAtIndex:index];
}

+ (NSValueTransformer *)instancesJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONArrayTransformerWithModelClass:[UAELBInstance class]];
}

+ (NSValueTransformer *)instancesQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAELBInstance class]];
}

- (void)addInstance:(UAELBInstance *)instance
{
	if (self.instances == nil)
		[self setInstances:[NSMutableArray array]];
	[self.instances addObject:instance];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAELBRegisterInstancesWithLoadBalancerRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAELBRegisterInstancesWithLoadBalancerRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAELBRegisterInstancesWithLoadBalancerRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAELBRegisterInstancesWithLoadBalancerRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
