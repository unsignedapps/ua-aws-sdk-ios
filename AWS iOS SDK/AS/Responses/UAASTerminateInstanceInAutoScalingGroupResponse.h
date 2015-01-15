//
//  UAASTerminateInstanceInAutoScalingGroupResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAASResponse.h"

@class UAASActivity;

@interface UAASTerminateInstanceInAutoScalingGroupResponse : UAASResponse

@property (nonatomic, copy) UAASActivity *activity;

@end
