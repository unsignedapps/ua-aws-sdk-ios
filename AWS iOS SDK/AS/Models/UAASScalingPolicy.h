//
//  UAASScalingPolicy.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAASModel.h"

@class UAASAlarm;

@interface UAASScalingPolicy : UAASModel

@property (nonatomic, copy) NSString *autoScalingGroupName;
@property (nonatomic, copy) NSString *policyName;
@property (nonatomic, strong) NSNumber *scalingAdjustment;
@property (nonatomic) UAASScalingPolicyAdjustmentType adjustmentType;
@property (nonatomic, strong) NSNumber *cooldown;
@property (nonatomic, copy) NSString *policyARN;
@property (nonatomic, copy) NSArray *alarms;
@property (nonatomic, strong) NSNumber *minAdjustmentStep;

@end
