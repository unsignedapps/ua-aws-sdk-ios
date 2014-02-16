//
//  UAASDeleteLaunchConfigurationResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASDeleteLaunchConfigurationResponse.h"

@implementation UAASDeleteLaunchConfigurationResponse

+ (NSString *)XPathPrefix
{
    return @"./AutoScaling:DeleteLaunchConfigurationResponse/AutoScaling:DeleteLaunchConfigurationResult/";
}

@end
