//
//  UAASAutoScalingGroup.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAASModel.h"

@class UAASInstance, UAASSuspendedProcess, UAASEnabledMetric, UAASTag;

@interface UAASAutoScalingGroup : UAASModel

@property (nonatomic, copy) NSString *autoScalingGroupName;
@property (nonatomic, copy) NSString *autoScalingGroupARN;
@property (nonatomic, copy) NSString *launchConfigurationName;
@property (nonatomic, strong) NSNumber *minSize;
@property (nonatomic, strong) NSNumber *maxSize;
@property (nonatomic, strong) NSNumber *desiredCapacity;
@property (nonatomic, strong) NSNumber *defaultCooldown;
@property (nonatomic, copy) NSArray *availabilityZones;
@property (nonatomic, copy) NSArray *loadBalancerNames;
@property (nonatomic) UAASHealthCheckType healthCheckType;
@property (nonatomic, strong) NSNumber *healthCheckGracePeriod;
@property (nonatomic, copy) NSArray *instances;
@property (nonatomic, copy) NSDate *createdTime;
@property (nonatomic, copy) NSArray *suspendedProcesses;
@property (nonatomic, copy) NSString *placementGroup;
@property (nonatomic, copy) NSString *vPCZoneIdentifier;
@property (nonatomic, copy) NSArray *enabledMetrics;
@property (nonatomic, copy) NSString *status;
@property (nonatomic, copy) NSArray *tags;
@property (nonatomic, copy) NSArray *terminationPolicies;

/**
 * Retrieves the NSString at the specified index.
**/
- (NSString *)availabilityZoneAtIndex:(NSUInteger)index;

/**
 * Retrieves the NSString at the specified index.
**/
- (NSString *)loadBalancerNameAtIndex:(NSUInteger)index;

/**
 * Retrieves the UAASInstance at the specified index.
**/
- (UAASInstance *)instanceAtIndex:(NSUInteger)index;

/**
 * Retrieves the UAASSuspendedProcess at the specified index.
**/
- (UAASSuspendedProcess *)suspendedProcessAtIndex:(NSUInteger)index;

/**
 * Retrieves the UAASEnabledMetric at the specified index.
**/
- (UAASEnabledMetric *)enabledMetricAtIndex:(NSUInteger)index;

/**
 * Retrieves the UAASTag at the specified index.
**/
- (UAASTag *)tagAtIndex:(NSUInteger)index;

/**
 * Retrieves the NSString at the specified index.
**/
- (NSString *)terminationPolicyAtIndex:(NSUInteger)index;

/**
 * Adds a AvailabilityZone to the availabilityZones property.
 *
 * This will initialise availabilityZones with an empty mutable array if necessary.
**/
- (void)addAvailabilityZone:(NSString *)availabilityZone;
/**
 * Adds a LoadBalancerName to the loadBalancerNames property.
 *
 * This will initialise loadBalancerNames with an empty mutable array if necessary.
**/
- (void)addLoadBalancerName:(NSString *)loadBalancerName;
/**
 * Adds a Instance to the instances property.
 *
 * This will initialise instances with an empty mutable array if necessary.
**/
- (void)addInstance:(UAASInstance *)instance;
/**
 * Adds a SuspendedProcess to the suspendedProcesses property.
 *
 * This will initialise suspendedProcesses with an empty mutable array if necessary.
**/
- (void)addSuspendedProcess:(UAASSuspendedProcess *)suspendedProcess;
/**
 * Adds a EnabledMetric to the enabledMetrics property.
 *
 * This will initialise enabledMetrics with an empty mutable array if necessary.
**/
- (void)addEnabledMetric:(UAASEnabledMetric *)enabledMetric;
/**
 * Adds a Tag to the tags property.
 *
 * This will initialise tags with an empty mutable array if necessary.
**/
- (void)addTag:(UAASTag *)tag;
/**
 * Adds a TerminationPolicy to the terminationPolicies property.
 *
 * This will initialise terminationPolicies with an empty mutable array if necessary.
**/
- (void)addTerminationPolicy:(NSString *)terminationPolicy;

@end
