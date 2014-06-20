//
//  UAASDeleteLaunchConfigurationResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASDeleteLaunchConfigurationResponse.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAASDeleteLaunchConfigurationResponse

+ (NSString *)XPathPrefix
{
    return @"./AutoScaling:DeleteLaunchConfigurationResponse/AutoScaling:DeleteLaunchConfigurationResult/";
}

@end

#pragma clang diagnostic pop