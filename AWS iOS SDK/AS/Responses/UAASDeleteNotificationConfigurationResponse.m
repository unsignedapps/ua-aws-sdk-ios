//
//  UAASDeleteNotificationConfigurationResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASDeleteNotificationConfigurationResponse.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAASDeleteNotificationConfigurationResponse

+ (NSString *)XPathPrefix
{
    return @"./AutoScaling:DeleteNotificationConfigurationResponse/AutoScaling:DeleteNotificationConfigurationResult/";
}

@end

#pragma clang diagnostic pop