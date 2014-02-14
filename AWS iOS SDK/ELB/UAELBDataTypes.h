//
//  UAELBDataTypes.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License File.
//  Created by Rob Amos.
//
//

// UAELBInstanceState
typedef NS_ENUM(NSUInteger, UAELBInstanceState) {
	UAELBInstanceStateUnknown = 0,
	UAELBInstanceStateInService = 1,
	UAELBInstanceStateOutOfService = 2
};

// UAELBInstanceStateReasonCode
typedef NS_ENUM(NSUInteger, UAELBInstanceStateReasonCode) {
	UAELBInstanceStateReasonCodeUnknown = 0,
	UAELBInstanceStateReasonCodeELB = 1,
	UAELBInstanceStateReasonCodeInstance = 2
};

// UAELBScheme
typedef NS_ENUM(NSUInteger, UAELBScheme) {
	UAELBSchemeUnknown = 0,
	UAELBSchemeInternetFacing = 1,
	UAELBSchemeInternal = 2
};