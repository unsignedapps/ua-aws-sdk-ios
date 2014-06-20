//
//  UAASDeleteAutoScalingGroupResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASDeleteAutoScalingGroupResponse.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAASDeleteAutoScalingGroupResponse

+ (NSString *)XPathPrefix
{
    return @"./AutoScaling:DeleteAutoScalingGroupResponse/AutoScaling:DeleteAutoScalingGroupResult/";
}

@end

#pragma clang diagnostic pop