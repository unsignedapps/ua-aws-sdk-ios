//
//  UAASCreateAutoScalingGroupResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASCreateAutoScalingGroupResponse.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAASCreateAutoScalingGroupResponse

+ (NSString *)XPathPrefix
{
    return @"./AutoScaling:CreateAutoScalingGroupResponse/AutoScaling:CreateAutoScalingGroupResult/";
}

@end

#pragma clang diagnostic pop