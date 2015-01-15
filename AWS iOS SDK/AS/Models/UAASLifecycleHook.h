//
//  UAASLifecycleHook.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAASModel.h"

@interface UAASLifecycleHook : UAASModel

@property (nonatomic, copy) NSString *lifecycleHookName;
@property (nonatomic, copy) NSString *autoScalingGroupName;
@property (nonatomic, copy) NSString *lifecycleTransition;
@property (nonatomic, copy) NSString *notificationTargetARN;
@property (nonatomic, copy) NSString *roleARN;
@property (nonatomic, copy) NSString *notificationMetadata;
@property (nonatomic, strong) NSNumber *heartbeatTimeout;
@property (nonatomic, strong) NSNumber *globalTimeout;
@property (nonatomic) UAASLifecycleHookDefaultResult defaultResult;

@end
