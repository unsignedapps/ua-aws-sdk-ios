//
//  UAASPutNotificationConfigurationResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASPutNotificationConfigurationResponse.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAASPutNotificationConfigurationResponse

+ (NSString *)XPathPrefix
{
    return @"./AutoScaling:PutNotificationConfigurationResponse/AutoScaling:PutNotificationConfigurationResult/";
}

@end

#pragma clang diagnostic pop