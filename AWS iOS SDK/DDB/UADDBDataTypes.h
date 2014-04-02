//
//  UADDBDataTypes.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License File.
//  Created by Rob Amos.
//
//

// UADDBAttributeType
typedef NS_ENUM(NSUInteger, UADDBAttributeType) {
	UADDBAttributeTypeUnknown = 0,
	UADDBAttributeTypeString = 1,
	UADDBAttributeTypeNumber = 2,
	UADDBAttributeTypeBinary = 3
};

// UADDBKeyType
typedef NS_ENUM(NSUInteger, UADDBKeyType) {
	UADDBKeyTypeUnknown = 0,
	UADDBKeyTypeHash = 1,
	UADDBKeyTypeRange = 2
};

// UADDBProjectionType
typedef NS_ENUM(NSUInteger, UADDBProjectionType) {
	UADDBProjectionTypeUnknown = 0,
	UADDBProjectionTypeKeysOnly = 1,
	UADDBProjectionTypeInclude = 2,
	UADDBProjectionTypeAll = 3
};

// UADDBIndexStatus
typedef NS_ENUM(NSUInteger, UADDBIndexStatus) {
	UADDBIndexStatusUnknown = 0,
	UADDBIndexStatusCreating = 1,
	UADDBIndexStatusUpdating = 2,
	UADDBIndexStatusDeleting = 3,
	UADDBIndexStatusActive = 4
};

// UADDBTableStatus
typedef NS_ENUM(NSUInteger, UADDBTableStatus) {
	UADDBTableStatusUnknown = 0,
	UADDBTableStatusCreating = 1,
	UADDBTableStatusUpdating = 2,
	UADDBTableStatusDeleting = 3,
	UADDBTableStatusActive = 4
};

// UADDBReturnConsumedCapacityType
typedef NS_ENUM(NSUInteger, UADDBReturnConsumedCapacityType) {
	UADDBReturnConsumedCapacityTypeUnknown = 0,
	UADDBReturnConsumedCapacityTypeIndexes = 1,
	UADDBReturnConsumedCapacityTypeTotal = 2,
	UADDBReturnConsumedCapacityTypeNone = 3
};

// UADDBReturnItemCollectionMetricsType
typedef NS_ENUM(NSUInteger, UADDBReturnItemCollectionMetricsType) {
	UADDBReturnItemCollectionMetricsTypeUnknown = 0,
	UADDBReturnItemCollectionMetricsTypeSize = 1,
	UADDBReturnItemCollectionMetricsTypeNone = 2
};

// UADDBAttributeDefinitionAttributeType
typedef NS_ENUM(NSUInteger, UADDBAttributeDefinitionAttributeType) {
	UADDBAttributeDefinitionAttributeTypeUnknown = 0,
	UADDBAttributeDefinitionAttributeTypeString = 1,
	UADDBAttributeDefinitionAttributeTypeNumber = 2,
	UADDBAttributeDefinitionAttributeTypeBinary = 3
};

// UADDBReturnValueType
typedef NS_ENUM(NSUInteger, UADDBReturnValueType) {
	UADDBReturnValueTypeUnknown = 0,
	UADDBReturnValueTypeNone = 1,
	UADDBReturnValueTypeAllOld = 2,
	UADDBReturnValueTypeUpdatedOld = 3,
	UADDBReturnValueTypeAllNew = 4,
	UADDBReturnValueTypeUpdatedNew = 5
};

// UADDBComparisonOperator
typedef NS_ENUM(NSUInteger, UADDBComparisonOperator) {
	UADDBComparisonOperatorUnknown = 0,
	UADDBComparisonOperatorEQ = 1,
	UADDBComparisonOperatorLE = 2,
	UADDBComparisonOperatorLT = 3,
	UADDBComparisonOperatorGE = 4,
	UADDBComparisonOperatorGT = 5,
	UADDBComparisonOperatorBeginsWith = 6,
	UADDBComparisonOperatorBetween = 7
};

// UADDBSelectType
typedef NS_ENUM(NSUInteger, UADDBSelectType) {
	UADDBSelectTypeUnknown = 0,
	UADDBSelectTypeAllAttributes = 1,
	UADDBSelectTypeAllProjectedAttributes = 2,
	UADDBSelectTypeSpecificAttributes = 3,
	UADDBSelectTypeCount = 4
};

// UADDBAttributeUpdateActionType
typedef NS_ENUM(NSUInteger, UADDBAttributeUpdateActionType) {
	UADDBAttributeUpdateActionTypeUnknown = 0,
	UADDBAttributeUpdateActionTypePut = 1,
	UADDBAttributeUpdateActionTypeDelete = 2,
	UADDBAttributeUpdateActionTypeAdd = 3
};

