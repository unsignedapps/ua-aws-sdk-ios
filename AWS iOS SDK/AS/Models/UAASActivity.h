//
//  UAASActivity.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAASModel.h"

@interface UAASActivity : UAASModel

@property (nonatomic, copy) NSString *activityID;
@property (nonatomic, copy) NSString *autoScalingGroupName;
@property (nonatomic, copy) NSString *descriptionValue;
@property (nonatomic, copy) NSString *cause;
@property (nonatomic, copy) NSDate *startTime;
@property (nonatomic, copy) NSDate *endTime;
@property (nonatomic) UAASActivityStatus statusCode;
@property (nonatomic, copy) NSString *statusMessage;
@property (nonatomic, strong) NSNumber *progress;
@property (nonatomic, copy) NSString *details;

@end
