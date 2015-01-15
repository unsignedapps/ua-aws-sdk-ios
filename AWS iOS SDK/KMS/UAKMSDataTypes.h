//
//  UAKMSDataTypes.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License File.
//  Created by Rob Amos.
//
//

// UAKMSKeyUsage
typedef NS_ENUM(NSUInteger, UAKMSKeyUsage) {
	UAKMSKeyUsageUnknown = 0,
	UAKMSKeyUsageEncryptDecrypt = 1
};

// UAKMSKeySpec
typedef NS_ENUM(NSUInteger, UAKMSKeySpec) {
	UAKMSKeySpecUnknown = 0,
	UAKMSKeySpecAES256 = 1,
	UAKMSKeySpecAES128 = 2
};

