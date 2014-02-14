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
	UAASInstanceLifecycleStateQuarantined = 2,
	UAASInstanceLifecycleStateInService = 3,
	UAASInstanceLifecycleStateTerminating = 4,
	UAASInstanceLifecycleStateTerminated = 5
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
	UAASEBSBlockDeviceVolumeTypeStandard = 1,
	UAASEBSBlockDeviceVolumeTypeIo1 = 2
};

// UAASActivityStatus
typedef NS_ENUM(NSUInteger, UAASActivityStatus) {
	UAASActivityStatusUnknown = 0,
	UAASActivityStatusWaitingForSpotInstanceRequestID = 1,
	UAASActivityStatusWaitingForSpotInstanceID = 2,
	UAASActivityStatusWaitingForInstanceID = 3,
	UAASActivityStatusPreInService = 4,
	UAASActivityStatusInProgress = 5,
	UAASActivityStatusSuccessful = 6,
	UAASActivityStatusFailed = 7,
	UAASActivityStatusCancelled = 8
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