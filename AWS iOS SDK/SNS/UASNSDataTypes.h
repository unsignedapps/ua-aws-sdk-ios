//
//  UASNSDataTypes.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License File.
//  Created by Rob Amos.
//
//

// UASNSPlatformApplicationType
typedef NS_ENUM(NSUInteger, UASNSPlatformApplicationType) {
	UASNSPlatformApplicationTypeUnknown = 0,
	UASNSPlatformApplicationTypeAdm = 1,
	UASNSPlatformApplicationTypeApns = 2,
	UASNSPlatformApplicationTypeApnsSandbox = 3,
	UASNSPlatformApplicationTypeGcm = 4
};

// UASNSSubscriptionAttribute
typedef NS_ENUM(NSUInteger, UASNSSubscriptionAttribute) {
	UASNSSubscriptionAttributeUnknown = 0,
	UASNSSubscriptionAttributeDeliveryPolicy = 1,
	UASNSSubscriptionAttributeRawMessageDelivery = 2
};

// UASNSTopicAttribute
typedef NS_ENUM(NSUInteger, UASNSTopicAttribute) {
	UASNSTopicAttributeUnknown = 0,
	UASNSTopicAttributePolicy = 1,
	UASNSTopicAttributeDisplayName = 2,
	UASNSTopicAttributeDeliveryPolicy = 3
};

