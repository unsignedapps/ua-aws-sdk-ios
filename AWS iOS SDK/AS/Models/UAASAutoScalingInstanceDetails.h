//
//  UAASAutoScalingInstanceDetails.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASModel.h"

@interface UAASAutoScalingInstanceDetails : UAASModel

@property (nonatomic, copy) NSString *instanceID;
@property (nonatomic, copy) NSString *autoScalingGroupName;
@property (nonatomic, copy) NSString *availabilityZone;
@property (nonatomic) UAASInstanceLifecycleState lifecycleState;
@property (nonatomic, copy) NSString *healthStatus;
@property (nonatomic, copy) NSString *launchConfigurationName;

@end
