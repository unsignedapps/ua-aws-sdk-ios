//
//  UAASAutoScalingGroup.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
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

@end
