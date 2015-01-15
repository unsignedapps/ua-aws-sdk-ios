//
//  UASNSDataTypes.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License File.
//  Created by Rob Amos.
//
//

// UASNSProtocol
typedef NS_ENUM(NSUInteger, UASNSProtocol) {
	UASNSProtocolUnknown = 0,
	UASNSProtocolHTTP = 1,
	UASNSProtocolHTTPS = 2,
	UASNSProtocolEmail = 3,
	UASNSProtocolEmailJSON = 4,
	UASNSProtocolSMS = 5,
	UASNSProtocolSQS = 6,
	UASNSProtocolApplication = 7
};

// UASNSPlatformApplicationType
typedef NS_ENUM(NSUInteger, UASNSPlatformApplicationType) {
	UASNSPlatformApplicationTypeUnknown = 0,
	UASNSPlatformApplicationTypeADM = 1,
	UASNSPlatformApplicationTypeAPNS = 2,
	UASNSPlatformApplicationTypeAPNSSandbox = 3,
	UASNSPlatformApplicationTypeGCM = 4,
	UASNSPlatformApplicationTypeBaidu = 5,
	UASNSPlatformApplicationTypeMPNS = 6,
	UASNSPlatformApplicationTypeWNS = 7
};

// UASNSMessageAttributeDataType
typedef NS_ENUM(NSUInteger, UASNSMessageAttributeDataType) {
	UASNSMessageAttributeDataTypeUnknown = 0,
	UASNSMessageAttributeDataTypeString = 1,
	UASNSMessageAttributeDataTypeNumber = 2,
	UASNSMessageAttributeDataTypeBinary = 3
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

static NSString * const UASNSPlatformApplicationAttributePlatformCredential = @"PlatformCredential";
static NSString * const UASNSPlatformApplicationAttributePlatformPrincipal = @"PlatformPrincipal";
static NSString * const UASNSPlatformApplicationAttributeEventEndpointCreated = @"EventEndpointCreated";
static NSString * const UASNSPlatformApplicationAttributeEventEndpointDeleted = @"EventEndpointDeleted";
static NSString * const UASNSPlatformApplicationAttributeEventEndpointUpdated = @"EventEndpointUpdated";
static NSString * const UASNSPlatformApplicationAttributeEventDeliveryFailure = @"EventDeliveryFailure";
static NSString * const UASNSEndpointAttributeCustomUserData = @"CustomUserData";
static NSString * const UASNSEndpointAttributeEnabled = @"Enabled";
static NSString * const UASNSEndpointAttributeToken = @"Token";