//
//  UARDSDataTypes.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License File.
//  Created by Rob Amos.
//
//

// UARDSEventSubscriptionStatus
typedef NS_ENUM(NSUInteger, UARDSEventSubscriptionStatus) {
	UARDSEventSubscriptionStatusUnknown = 0,
	UARDSEventSubscriptionStatusCreating = 1,
	UARDSEventSubscriptionStatusModifying = 2,
	UARDSEventSubscriptionStatusDeleting = 3,
	UARDSEventSubscriptionStatusActive = 4,
	UARDSEventSubscriptionStatusNoPermission = 5,
	UARDSEventSubscriptionStatusTopicNotExist = 6
};

// UARDSSourceType
typedef NS_ENUM(NSUInteger, UARDSSourceType) {
	UARDSSourceTypeUnknown = 0,
	UARDSSourceTypeDbInstance = 1,
	UARDSSourceTypeDbParameterGroup = 2,
	UARDSSourceTypeDbSecurityGroup = 3,
	UARDSSourceTypeDbSnapshot = 4
};

// UARDSEngine
typedef NS_ENUM(NSUInteger, UARDSEngine) {
	UARDSEngineUnknown = 0,
	UARDSEngineMySQL = 1,
	UARDSEngineOrACLeSe1 = 2,
	UARDSEngineOrACLeSe = 3,
	UARDSEngineOrACLeEe = 4,
	UARDSEngineSqlserverEe = 5,
	UARDSEngineSqlserverSe = 6,
	UARDSEngineSqlserverEx = 7,
	UARDSEngineSqlserverWeb = 8,
	UARDSEnginePostgres = 9
};

// UARDSLicenseModel
typedef NS_ENUM(NSUInteger, UARDSLicenseModel) {
	UARDSLicenseModelUnknown = 0,
	UARDSLicenseModelLicenseIncluded = 1,
	UARDSLicenseModelBringYourOwnLicense = 2,
	UARDSLicenseModelGeneralPublicLicense = 3
};

// UARDSStorageType
typedef NS_ENUM(NSUInteger, UARDSStorageType) {
	UARDSStorageTypeUnknown = 0,
	UARDSStorageTypeStandard = 1,
	UARDSStorageTypeGP2 = 2,
	UARDSStorageTypeIO1 = 3
};

// UARDSReservedDBInstanceOfferingType
typedef NS_ENUM(NSUInteger, UARDSReservedDBInstanceOfferingType) {
	UARDSReservedDBInstanceOfferingTypeUnknown = 0,
	UARDSReservedDBInstanceOfferingTypePartialUpfront = 1,
	UARDSReservedDBInstanceOfferingTypeAllUpfront = 2,
	UARDSReservedDBInstanceOfferingTypeNoUpfront = 3
};

// UARDSOptInType
typedef NS_ENUM(NSUInteger, UARDSOptInType) {
	UARDSOptInTypeUnknown = 0,
	UARDSOptInTypeImmediate = 1,
	UARDSOptInTypeNextMaintenance = 2,
	UARDSOptInTypeUndoOptIn = 3
};

