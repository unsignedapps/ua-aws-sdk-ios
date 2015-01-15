//
//  UAASDataTypes.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License File.
//  Created by Rob Amos.
//
//

// UAASScalingPolicyAdjustmentType
typedef NS_ENUM(NSUInteger, UAASScalingPolicyAdjustmentType) {
	UAASScalingPolicyAdjustmentTypeUnknown = 0,
	UAASScalingPolicyAdjustmentTypeChangeInCapacity = 1,
	UAASScalingPolicyAdjustmentTypeExactCapacity = 2,
	UAASScalingPolicyAdjustmentTypePercentChangeInCapacity = 3
};

// UAASInstanceLifecycleState
typedef NS_ENUM(NSUInteger, UAASInstanceLifecycleState) {
	UAASInstanceLifecycleStateUnknown = 0,
	UAASInstanceLifecycleStatePending = 1,
	UAASInstanceLifecycleStatePendingWait = 2,
	UAASInstanceLifecycleStatePendingProceed = 3,
	UAASInstanceLifecycleStateQuarantined = 4,
	UAASInstanceLifecycleStateInService = 5,
	UAASInstanceLifecycleStateTerminating = 6,
	UAASInstanceLifecycleStateTerminatingWait = 7,
	UAASInstanceLifecycleStateTerminatingProceed = 8,
	UAASInstanceLifecycleStateTerminated = 9,
	UAASInstanceLifecycleStateDetaching = 10,
	UAASInstanceLifecycleStateDetached = 11,
	UAASInstanceLifecycleStateEnteringStandby = 12,
	UAASInstanceLifecycleStateStandby = 13
};

// UAASTagResourceType
typedef NS_ENUM(NSUInteger, UAASTagResourceType) {
	UAASTagResourceTypeUnknown = 0,
	UAASTagResourceTypeAutoScalingGroup = 1
};

// UAASHealthCheckType
typedef NS_ENUM(NSUInteger, UAASHealthCheckType) {
	UAASHealthCheckTypeUnknown = 0,
	UAASHealthCheckTypeEC2 = 1,
	UAASHealthCheckTypeELB = 2
};

// UAASEBSBlockDeviceVolumeType
typedef NS_ENUM(NSUInteger, UAASEBSBlockDeviceVolumeType) {
	UAASEBSBlockDeviceVolumeTypeUnknown = 0,
	UAASEBSBlockDeviceVolumeTypeGP2 = 1,
	UAASEBSBlockDeviceVolumeTypeStandard = 2,
	UAASEBSBlockDeviceVolumeTypeIO1 = 3
};

// UAASLifecycleHookDefaultResult
typedef NS_ENUM(NSUInteger, UAASLifecycleHookDefaultResult) {
	UAASLifecycleHookDefaultResultUnknown = 0,
	UAASLifecycleHookDefaultResultContinue = 1,
	UAASLifecycleHookDefaultResultAbandon = 2
};

// UAASActivityStatus
typedef NS_ENUM(NSUInteger, UAASActivityStatus) {
	UAASActivityStatusUnknown = 0,
	UAASActivityStatusWaitingForSpotInstanceRequestID = 1,
	UAASActivityStatusWaitingForSpotInstanceID = 2,
	UAASActivityStatusWaitingForInstanceID = 3,
	UAASActivityStatusPreInService = 4,
	UAASActivityStatusInProgress = 5,
	UAASActivityStatusWaitingForELBConnectionDraining = 6,
	UAASActivityStatusMidLifecycleAction = 7,
	UAASActivityStatusSuccessful = 8,
	UAASActivityStatusFailed = 9,
	UAASActivityStatusCancelled = 10
};

// UAASScalingActivityStatus
typedef NS_ENUM(NSUInteger, UAASScalingActivityStatus) {
	UAASScalingActivityStatusUnknown = 0,
	UAASScalingActivityStatusWaitingForSpotInstanceRequestID = 1,
	UAASScalingActivityStatusWaitingForSpotInstanceID = 2,
	UAASScalingActivityStatusWaitingForInstanceID = 3,
	UAASScalingActivityStatusPreInService = 4,
	UAASScalingActivityStatusInProgress = 5,
	UAASScalingActivityStatusSuccessful = 6,
	UAASScalingActivityStatusFailed = 7,
	UAASScalingActivityStatusCancelled = 8
};

static NSString * const UAASLifecycleHookTypeEC2InstanceLaunching = @"autoscaling:EC2_INSTANCE_LAUNCHING";
static NSString * const UAASLifecycleHookTypeEC2InstanceTerminating = @"autoscaling:EC2_INSTANCE_TERMINATING";