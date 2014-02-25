//
//  UAASCreateAutoScalingGroupRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASCreateAutoScalingGroupRequest.h"
#import "UAASCreateAutoScalingGroupResponse.h"
#import "UAASTag.h"

@interface UAASCreateAutoScalingGroupRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAASCreateAutoScalingGroupRequest

@synthesize action=_action, version=_version, autoScalingGroupName=_autoScalingGroupName, launchConfigurationName=_launchConfigurationName, instanceID=_instanceID, minSize=_minSize, maxSize=_maxSize, desiredCapacity=_desiredCapacity, defaultCooldown=_defaultCooldown, availabilityZones=_availabilityZones, loadBalancerNames=_loadBalancerNames, healthCheckType=_healthCheckType, healthCheckGracePeriod=_healthCheckGracePeriod, placementGroup=_placementGroup, vPCZoneIdentifier=_vPCZoneIdentifier, terminationPolicies=_terminationPolicies, tags=_tags;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"CreateAutoScalingGroup"];
		[self setVersion:@"2011-01-01"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAASCreateAutoScalingGroupResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAASRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"autoScalingGroupName": @"AutoScalingGroupName",
        @"launchConfigurationName": @"LaunchConfigurationName",
        @"instanceID": @"InstanceId",
        @"minSize": @"MinSize",
        @"maxSize": @"MaxSize",
        @"desiredCapacity": @"DesiredCapacity",
        @"defaultCooldown": @"DefaultCooldown",
        @"availabilityZones": @"AvailabilityZones.member",
        @"loadBalancerNames": @"LoadBalancerNames.member",
        @"healthCheckType": @"HealthCheckType",
        @"healthCheckGracePeriod": @"HealthCheckGracePeriod",
        @"placementGroup": @"PlacementGroup",
        @"vPCZoneIdentifier": @"VPCZoneIdentifier",
        @"terminationPolicies": @"TerminationPolicies.member",
        @"tags": @"Tags.member"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)tagsJSONTransformer
{
  return [NSValueTransformer mtl_JSONArrayTransformerWithModelClass:[UAASTag class]];
}

+ (NSValueTransformer *)tagsQueryStringTransformer
{
	return [NSValueTransformer mtl_QueryStringArrayTransformerWithModelClass:[UAASTag class]];
}

- (void)addAvailabilityZone:(NSString *)availabilityZone
{
	if (self.availabilityZones == nil)
		[self setAvailabilityZones:[NSMutableArray array]];
	[self.availabilityZones addObject:availabilityZone];
}
- (void)addLoadBalancerName:(NSString *)loadBalancerName
{
	if (self.loadBalancerNames == nil)
		[self setLoadBalancerNames:[NSMutableArray array]];
	[self.loadBalancerNames addObject:loadBalancerName];
}
- (void)addTerminationPolicy:(NSString *)terminationPolicy
{
	if (self.terminationPolicies == nil)
		[self setTerminationPolicies:[NSMutableArray array]];
	[self.terminationPolicies addObject:terminationPolicy];
}
- (void)addTag:(UAASTag *)tag
{
	if (self.tags == nil)
		[self setTags:[NSMutableArray array]];
	[self.tags addObject:tag];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAASCreateAutoScalingGroupRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAASCreateAutoScalingGroupRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAASCreateAutoScalingGroupRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAASCreateAutoScalingGroupRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
