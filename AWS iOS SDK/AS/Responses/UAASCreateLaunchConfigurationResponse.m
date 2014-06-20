//
//  UAASCreateLaunchConfigurationResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASCreateLaunchConfigurationResponse.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAASCreateLaunchConfigurationResponse

+ (NSString *)XPathPrefix
{
    return @"./AutoScaling:CreateLaunchConfigurationResponse/AutoScaling:CreateLaunchConfigurationResult/";
}

@end

#pragma clang diagnostic pop