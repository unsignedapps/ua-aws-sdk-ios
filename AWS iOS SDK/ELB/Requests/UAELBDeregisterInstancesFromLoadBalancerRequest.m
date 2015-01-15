//
//  UAELBDeregisterInstancesFromLoadBalancerRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBDeregisterInstancesFromLoadBalancerRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAELBDeregisterInstancesFromLoadBalancerResponse.h"
#import "UAELBInstance.h"

@interface UAELBDeregisterInstancesFromLoadBalancerRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAELBDeregisterInstancesFromLoadBalancerRequest

@synthesize action=_action, version=_version, loadBalancerName=_loadBalancerName, instances=_instances;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"DeregisterInstancesFromLoadBalancer"];
		[self setVersion:@"2012-06-01"];
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(instanceAtIndex:) propertyName:@"instances"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addInstance:) propertyName:@"instances"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAELBDeregisterInstancesFromLoadBalancerResponse class];
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

+ (NSValueTransformer *)instancesJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONArrayTransformerWithModelClass:[UAELBInstance class]];
}

+ (NSValueTransformer *)instancesQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAELBInstance class]];
}

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAELBDeregisterInstancesFromLoadBalancerRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAELBDeregisterInstancesFromLoadBalancerRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAELBDeregisterInstancesFromLoadBalancerRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAELBDeregisterInstancesFromLoadBalancerRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop