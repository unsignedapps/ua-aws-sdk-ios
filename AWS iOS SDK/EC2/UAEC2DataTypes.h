//
//  UAEC2DataTypes.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License File.
//  Created by Rob Amos.
//
//

// UAEC2VPCPeeringConnectionState
typedef NS_ENUM(NSUInteger, UAEC2VPCPeeringConnectionState) {
	UAEC2VPCPeeringConnectionStateUnknown = 0,
	UAEC2VPCPeeringConnectionStateInitiatingRequest = 1,
	UAEC2VPCPeeringConnectionStatePendingAcceptance = 2,
	UAEC2VPCPeeringConnectionStateFailed = 3,
	UAEC2VPCPeeringConnectionStateExpired = 4,
	UAEC2VPCPeeringConnectionStateProvisioning = 5,
	UAEC2VPCPeeringConnectionStateActive = 6,
	UAEC2VPCPeeringConnectionStateDeleted = 7,
	UAEC2VPCPeeringConnectionStateRejected = 8
};

// UAEC2Domain
typedef NS_ENUM(NSUInteger, UAEC2Domain) {
	UAEC2DomainUnknown = 0,
	UAEC2DomainStandard = 1,
	UAEC2DomainVPC = 2
};

// UAEC2AttachmentState
typedef NS_ENUM(NSUInteger, UAEC2AttachmentState) {
	UAEC2AttachmentStateUnknown = 0,
	UAEC2AttachmentStateAttaching = 1,
	UAEC2AttachmentStateAttached = 2,
	UAEC2AttachmentStateDetaching = 3,
	UAEC2AttachmentStateDetached = 4
};

// UAEC2BundleTaskState
typedef NS_ENUM(NSUInteger, UAEC2BundleTaskState) {
	UAEC2BundleTaskStateUnknown = 0,
	UAEC2BundleTaskStatePending = 1,
	UAEC2BundleTaskStateWaitingForShutdown = 2,
	UAEC2BundleTaskStateBundling = 3,
	UAEC2BundleTaskStateStoring = 4,
	UAEC2BundleTaskStateCancelling = 5,
	UAEC2BundleTaskStateComplete = 6,
	UAEC2BundleTaskStateFailed = 7
};

// UAEC2ReservedInstancesListingState
typedef NS_ENUM(NSUInteger, UAEC2ReservedInstancesListingState) {
	UAEC2ReservedInstancesListingStateUnknown = 0,
	UAEC2ReservedInstancesListingStateActive = 1,
	UAEC2ReservedInstancesListingStatePending = 2,
	UAEC2ReservedInstancesListingStateCancelled = 3,
	UAEC2ReservedInstancesListingStateClosed = 4
};

// UAEC2CancelledSpotInstanceRequestState
typedef NS_ENUM(NSUInteger, UAEC2CancelledSpotInstanceRequestState) {
	UAEC2CancelledSpotInstanceRequestStateUnknown = 0,
	UAEC2CancelledSpotInstanceRequestStateActive = 1,
	UAEC2CancelledSpotInstanceRequestStateOpen = 2,
	UAEC2CancelledSpotInstanceRequestStateClosed = 3,
	UAEC2CancelledSpotInstanceRequestStateCancelled = 4,
	UAEC2CancelledSpotInstanceRequestStateFailed = 5
};

// UAEC2NetworkInterfaceAttachmentStatus
typedef NS_ENUM(NSUInteger, UAEC2NetworkInterfaceAttachmentStatus) {
	UAEC2NetworkInterfaceAttachmentStatusUnknown = 0,
	UAEC2NetworkInterfaceAttachmentStatusAttaching = 1,
	UAEC2NetworkInterfaceAttachmentStatusAttached = 2,
	UAEC2NetworkInterfaceAttachmentStatusDetaching = 3,
	UAEC2NetworkInterfaceAttachmentStatusDetached = 4
};

// UAEC2NetworkInterfaceState
typedef NS_ENUM(NSUInteger, UAEC2NetworkInterfaceState) {
	UAEC2NetworkInterfaceStateUnknown = 0,
	UAEC2NetworkInterfaceStateAvailable = 1,
	UAEC2NetworkInterfaceStateAttaching = 2,
	UAEC2NetworkInterfaceStateInUse = 3,
	UAEC2NetworkInterfaceStateDetaching = 4
};

// UAEC2SubnetState
typedef NS_ENUM(NSUInteger, UAEC2SubnetState) {
	UAEC2SubnetStateUnknown = 0,
	UAEC2SubnetStatePending = 1,
	UAEC2SubnetStateAvailable = 2
};

// UAEC2VolumeState
typedef NS_ENUM(NSUInteger, UAEC2VolumeState) {
	UAEC2VolumeStateUnknown = 0,
	UAEC2VolumeStateCreating = 1,
	UAEC2VolumeStateAvailable = 2,
	UAEC2VolumeStateInUse = 3,
	UAEC2VolumeStateDeleting = 4,
	UAEC2VolumeStateDeleted = 5,
	UAEC2VolumeStateError = 6
};

// UAEC2VPCState
typedef NS_ENUM(NSUInteger, UAEC2VPCState) {
	UAEC2VPCStateUnknown = 0,
	UAEC2VPCStatePending = 1,
	UAEC2VPCStateAvailable = 2
};

// UAEC2InstanceTenancy
typedef NS_ENUM(NSUInteger, UAEC2InstanceTenancy) {
	UAEC2InstanceTenancyUnknown = 0,
	UAEC2InstanceTenancyDefault = 1,
	UAEC2InstanceTenancyDedicated = 2
};

// UAEC2AvailabilityZoneState
typedef NS_ENUM(NSUInteger, UAEC2AvailabilityZoneState) {
	UAEC2AvailabilityZoneStateUnknown = 0,
	UAEC2AvailabilityZoneStateAvailable = 1,
	UAEC2AvailabilityZoneStateImpaired = 2,
	UAEC2AvailabilityZoneStateUnavailable = 3
};

// UAEC2VolumeType
typedef NS_ENUM(NSUInteger, UAEC2VolumeType) {
	UAEC2VolumeTypeUnknown = 0,
	UAEC2VolumeTypeStandard = 1,
	UAEC2VolumeTypeIo1 = 2
};

// UAEC2ImageState
typedef NS_ENUM(NSUInteger, UAEC2ImageState) {
	UAEC2ImageStateUnknown = 0,
	UAEC2ImageStateAvailable = 1,
	UAEC2ImageStatePending = 2,
	UAEC2ImageStateFailed = 3
};

// UAEC2Architecture
typedef NS_ENUM(NSUInteger, UAEC2Architecture) {
	UAEC2ArchitectureUnknown = 0,
	UAEC2ArchitectureI386 = 1,
	UAEC2ArchitectureX86_64 = 2
};

// UAEC2ImageType
typedef NS_ENUM(NSUInteger, UAEC2ImageType) {
	UAEC2ImageTypeUnknown = 0,
	UAEC2ImageTypeMachine = 1,
	UAEC2ImageTypeKernel = 2,
	UAEC2ImageTypeRamkdisk = 3
};

// UAEC2ImageSriovNetSupport
typedef NS_ENUM(NSUInteger, UAEC2ImageSriovNetSupport) {
	UAEC2ImageSriovNetSupportUnknown = 0,
	UAEC2ImageSriovNetSupportSimple = 1
};

// UAEC2RootDeviceType
typedef NS_ENUM(NSUInteger, UAEC2RootDeviceType) {
	UAEC2RootDeviceTypeUnknown = 0,
	UAEC2RootDeviceTypeEBS = 1,
	UAEC2RootDeviceTypeInstanceStore = 2
};

// UAEC2VirtualizationType
typedef NS_ENUM(NSUInteger, UAEC2VirtualizationType) {
	UAEC2VirtualizationTypeUnknown = 0,
	UAEC2VirtualizationTypeParavirtual = 1,
	UAEC2VirtualizationTypeHvm = 2
};

// UAEC2Hypervisor
typedef NS_ENUM(NSUInteger, UAEC2Hypervisor) {
	UAEC2HypervisorUnknown = 0,
	UAEC2HypervisorOvm = 1,
	UAEC2HypervisorXen = 2
};

// UAEC2InstanceInitiatedShutdownBehavior
typedef NS_ENUM(NSUInteger, UAEC2InstanceInitiatedShutdownBehavior) {
	UAEC2InstanceInitiatedShutdownBehaviorUnknown = 0,
	UAEC2InstanceInitiatedShutdownBehaviorStop = 1,
	UAEC2InstanceInitiatedShutdownBehaviorTerminate = 2
};

// UAEC2InstanceStatusDetailsName
typedef NS_ENUM(NSUInteger, UAEC2InstanceStatusDetailsName) {
	UAEC2InstanceStatusDetailsNameUnknown = 0,
	UAEC2InstanceStatusDetailsNameReachability = 1
};

// UAEC2InstanceStatusDetailsStatus
typedef NS_ENUM(NSUInteger, UAEC2InstanceStatusDetailsStatus) {
	UAEC2InstanceStatusDetailsStatusUnknown = 0,
	UAEC2InstanceStatusDetailsStatusPassed = 1,
	UAEC2InstanceStatusDetailsStatusFailed = 2,
	UAEC2InstanceStatusDetailsStatusInsufficientData = 3
};

// UAEC2InstanceStatusValue
typedef NS_ENUM(NSUInteger, UAEC2InstanceStatusValue) {
	UAEC2InstanceStatusValueUnknown = 0,
	UAEC2InstanceStatusValueOk = 1,
	UAEC2InstanceStatusValueImpaired = 2,
	UAEC2InstanceStatusValueInsufficientData = 3,
	UAEC2InstanceStatusValueNotApplicable = 4
};

// UAEC2InstanceState
typedef NS_ENUM(NSUInteger, UAEC2InstanceState) {
	UAEC2InstanceStateUnknown = 0,
	UAEC2InstanceStatePending = 1,
	UAEC2InstanceStateRunning = 2,
	UAEC2InstanceStateShuttingDown = 3,
	UAEC2InstanceStateTerminated = 4,
	UAEC2InstanceStateStopping = 5,
	UAEC2InstanceStateStopped = 6
};

// UAEC2InstanceMonitoringState
typedef NS_ENUM(NSUInteger, UAEC2InstanceMonitoringState) {
	UAEC2InstanceMonitoringStateUnknown = 0,
	UAEC2InstanceMonitoringStateDisabled = 1,
	UAEC2InstanceMonitoringStateEnabled = 2,
	UAEC2InstanceMonitoringStatePending = 3
};

// UAEC2InstanceArchitecture
typedef NS_ENUM(NSUInteger, UAEC2InstanceArchitecture) {
	UAEC2InstanceArchitectureUnknown = 0,
	UAEC2InstanceArchitectureI386 = 1,
	UAEC2InstanceArchitectureX86_64 = 2
};

// UAEC2InstanceRootDeviceType
typedef NS_ENUM(NSUInteger, UAEC2InstanceRootDeviceType) {
	UAEC2InstanceRootDeviceTypeUnknown = 0,
	UAEC2InstanceRootDeviceTypeEBS = 1,
	UAEC2InstanceRootDeviceTypeInstanceStore = 2
};

// UAEC2InstanceVirtualizationType
typedef NS_ENUM(NSUInteger, UAEC2InstanceVirtualizationType) {
	UAEC2InstanceVirtualizationTypeUnknown = 0,
	UAEC2InstanceVirtualizationTypeParavirtual = 1,
	UAEC2InstanceVirtualizationTypeHvm = 2
};

// UAEC2ReservedInstanceState
typedef NS_ENUM(NSUInteger, UAEC2ReservedInstanceState) {
	UAEC2ReservedInstanceStateUnknown = 0,
	UAEC2ReservedInstanceStatePaymentPending = 1,
	UAEC2ReservedInstanceStateActive = 2,
	UAEC2ReservedInstanceStatePaymentFailed = 3,
	UAEC2ReservedInstanceStateRetired = 4
};

// UAEC2SnapshotState
typedef NS_ENUM(NSUInteger, UAEC2SnapshotState) {
	UAEC2SnapshotStateUnknown = 0,
	UAEC2SnapshotStatePending = 1,
	UAEC2SnapshotStateCompleted = 2,
	UAEC2SnapshotStateError = 3
};

// UAEC2SpotInstanceRequestType
typedef NS_ENUM(NSUInteger, UAEC2SpotInstanceRequestType) {
	UAEC2SpotInstanceRequestTypeUnknown = 0,
	UAEC2SpotInstanceRequestTypeOneTime = 1,
	UAEC2SpotInstanceRequestTypePersistent = 2
};

// UAEC2SpotInstanceRequestState
typedef NS_ENUM(NSUInteger, UAEC2SpotInstanceRequestState) {
	UAEC2SpotInstanceRequestStateUnknown = 0,
	UAEC2SpotInstanceRequestStateOpen = 1,
	UAEC2SpotInstanceRequestStateActive = 2,
	UAEC2SpotInstanceRequestStateClosed = 3,
	UAEC2SpotInstanceRequestStateCancelled = 4,
	UAEC2SpotInstanceRequestStateFailed = 5
};

// UAEC2ResourceType
typedef NS_ENUM(NSUInteger, UAEC2ResourceType) {
	UAEC2ResourceTypeUnknown = 0,
	UAEC2ResourceTypeCustomerGateway = 1,
	UAEC2ResourceTypeDHCPOptions = 2,
	UAEC2ResourceTypeImage = 3,
	UAEC2ResourceTypeInstance = 4,
	UAEC2ResourceTypeInternetGateway = 5,
	UAEC2ResourceTypeNetworkACL = 6,
	UAEC2ResourceTypeNetworkInterface = 7,
	UAEC2ResourceTypeReservedInstances = 8,
	UAEC2ResourceTypeRouteTable = 9,
	UAEC2ResourceTypeSecurityGroup = 10,
	UAEC2ResourceTypeSnapshot = 11,
	UAEC2ResourceTypeSpotInstancesRequest = 12,
	UAEC2ResourceTypeSubnet = 13,
	UAEC2ResourceTypeVolume = 14,
	UAEC2ResourceTypeVPC = 15,
	UAEC2ResourceTypeVPNConnection = 16,
	UAEC2ResourceTypeVPNGateway = 17
};

// UAEC2VolumeStatusName
typedef NS_ENUM(NSUInteger, UAEC2VolumeStatusName) {
	UAEC2VolumeStatusNameUnknown = 0,
	UAEC2VolumeStatusNameIoEnabled = 1,
	UAEC2VolumeStatusNameIoPerformance = 2
};

// UAEC2VolumeStatusDetailStatus
typedef NS_ENUM(NSUInteger, UAEC2VolumeStatusDetailStatus) {
	UAEC2VolumeStatusDetailStatusUnknown = 0,
	UAEC2VolumeStatusDetailStatusPassed = 1,
	UAEC2VolumeStatusDetailStatusFailed = 2,
	UAEC2VolumeStatusDetailStatusNormal = 3,
	UAEC2VolumeStatusDetailStatusDegraded = 4,
	UAEC2VolumeStatusDetailStatusSeverelyDegraded = 5,
	UAEC2VolumeStatusDetailStatusStalled = 6
};

// UAEC2VolumeStatusInfoStatus
typedef NS_ENUM(NSUInteger, UAEC2VolumeStatusInfoStatus) {
	UAEC2VolumeStatusInfoStatusUnknown = 0,
	UAEC2VolumeStatusInfoStatusOk = 1,
	UAEC2VolumeStatusInfoStatusImpaired = 2,
	UAEC2VolumeStatusInfoStatusInsufficientData = 3
};

