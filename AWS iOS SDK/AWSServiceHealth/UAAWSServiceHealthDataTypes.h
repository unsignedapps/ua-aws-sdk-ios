//
//  UAAWSServiceHealthDataTypes.h
//  AWS iOS SDK
//
//  Created by Rob Amos on 11/02/2014.
//
//

@import Foundation;

typedef NS_ENUM(NSUInteger, UAAWSServiceHealthOutageType)
{
    UAAWSServiceHealthOutageTypeHealthy = 0,
    UAAWSServiceHealthOutageTypeInformational = 1,
    UAAWSServiceHealthOutageTypeDegraded = 2,
    UAAWSServiceHealthOutageTypeDisrupted = 3
};