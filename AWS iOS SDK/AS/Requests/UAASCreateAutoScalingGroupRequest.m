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

- (NSString *)availabilityZoneAtIndex:(NSUInteger)index
{
    if (self.availabilityZones == nil || index >= ([self.availabilityZones count]-1))
        return nil;

    return [self.availabilityZones objectAtIndex:index];
}

- (NSString *)loadBalancerNameAtIndex:(NSUInteger)index
{
    if (self.loadBalancerNames == nil || index >= ([self.loadBalancerNames count]-1))
        return nil;

    return [self.loadBalancerNames objectAtIndex:index];
}

- (NSString *)terminationPolicyAtIndex:(NSUInteger)index
{
    if (self.terminationPolicies == nil || index >= ([self.terminationPolicies count]-1))
        return nil;

    return [self.terminationPolicies objectAtIndex:index];
}

- (UAASTag *)tagAtIndex:(NSUInteger)index
{
    if (self.tags == nil || index >= ([self.tags count]-1))
        return nil;

    return [self.tags objectAtIndex:index];
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

- (void)setAutoScalingGroupName:(NSString *)autoScalingGroupName
{
	_autoScalingGroupName = autoScalingGroupName;
	
	if (![self.UA_dirtyProperties containsObject:@"autoScalingGroupName"])
		[self.UA_dirtyProperties addObject:@"autoScalingGroupName"];
}

- (void)setLaunchConfigurationName:(NSString *)launchConfigurationName
{
	_launchConfigurationName = launchConfigurationName;
	
	if (![self.UA_dirtyProperties containsObject:@"launchConfigurationName"])
		[self.UA_dirtyProperties addObject:@"launchConfigurationName"];
}

- (void)setInstanceID:(NSString *)instanceID
{
	_instanceID = instanceID;
	
	if (![self.UA_dirtyProperties containsObject:@"instanceID"])
		[self.UA_dirtyProperties addObject:@"instanceID"];
}

- (void)setMinSize:(NSNumber *)minSize
{
	_minSize = minSize;
	
	if (![self.UA_dirtyProperties containsObject:@"minSize"])
		[self.UA_dirtyProperties addObject:@"minSize"];
}

- (void)setMaxSize:(NSNumber *)maxSize
{
	_maxSize = maxSize;
	
	if (![self.UA_dirtyProperties containsObject:@"maxSize"])
		[self.UA_dirtyProperties addObject:@"maxSize"];
}

- (void)setDesiredCapacity:(NSNumber *)desiredCapacity
{
	_desiredCapacity = desiredCapacity;
	
	if (![self.UA_dirtyProperties containsObject:@"desiredCapacity"])
		[self.UA_dirtyProperties addObject:@"desiredCapacity"];
}

- (void)setDefaultCooldown:(NSNumber *)defaultCooldown
{
	_defaultCooldown = defaultCooldown;
	
	if (![self.UA_dirtyProperties containsObject:@"defaultCooldown"])
		[self.UA_dirtyProperties addObject:@"defaultCooldown"];
}

- (void)setAvailabilityZones:(NSMutableArray *)availabilityZones
{
	_availabilityZones = availabilityZones;
	
	if (![self.UA_dirtyProperties containsObject:@"availabilityZones"])
		[self.UA_dirtyProperties addObject:@"availabilityZones"];
}

- (void)setLoadBalancerNames:(NSMutableArray *)loadBalancerNames
{
	_loadBalancerNames = loadBalancerNames;
	
	if (![self.UA_dirtyProperties containsObject:@"loadBalancerNames"])
		[self.UA_dirtyProperties addObject:@"loadBalancerNames"];
}

- (void)setHealthCheckType:(NSString *)healthCheckType
{
	_healthCheckType = healthCheckType;
	
	if (![self.UA_dirtyProperties containsObject:@"healthCheckType"])
		[self.UA_dirtyProperties addObject:@"healthCheckType"];
}

- (void)setHealthCheckGracePeriod:(NSNumber *)healthCheckGracePeriod
{
	_healthCheckGracePeriod = healthCheckGracePeriod;
	
	if (![self.UA_dirtyProperties containsObject:@"healthCheckGracePeriod"])
		[self.UA_dirtyProperties addObject:@"healthCheckGracePeriod"];
}

- (void)setPlacementGroup:(NSString *)placementGroup
{
	_placementGroup = placementGroup;
	
	if (![self.UA_dirtyProperties containsObject:@"placementGroup"])
		[self.UA_dirtyProperties addObject:@"placementGroup"];
}

- (void)setVPCZoneIdentifier:(NSString *)vPCZoneIdentifier
{
	_vPCZoneIdentifier = vPCZoneIdentifier;
	
	if (![self.UA_dirtyProperties containsObject:@"vPCZoneIdentifier"])
		[self.UA_dirtyProperties addObject:@"vPCZoneIdentifier"];
}

- (void)setTerminationPolicies:(NSMutableArray *)terminationPolicies
{
	_terminationPolicies = terminationPolicies;
	
	if (![self.UA_dirtyProperties containsObject:@"terminationPolicies"])
		[self.UA_dirtyProperties addObject:@"terminationPolicies"];
}

- (void)setTags:(NSMutableArray *)tags
{
	_tags = tags;
	
	if (![self.UA_dirtyProperties containsObject:@"tags"])
		[self.UA_dirtyProperties addObject:@"tags"];
}

+ (NSValueTransformer *)tagsJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONArrayTransformerWithModelClass:[UAASTag class]];
}

+ (NSValueTransformer *)tagsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAASTag class]];
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
