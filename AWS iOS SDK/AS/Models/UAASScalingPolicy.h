//
//  UAASScalingPolicy.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
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

/**
 * Retrieves the UAASAlarm at the specified index.
**/
- (UAASAlarm *)alarmAtIndex:(NSUInteger)index;

@end
