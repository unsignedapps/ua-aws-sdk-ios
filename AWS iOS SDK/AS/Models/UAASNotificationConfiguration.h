//
//  UAASNotificationConfiguration.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAASModel.h"

@interface UAASNotificationConfiguration : UAASModel

@property (nonatomic, copy) NSString *autoScalingGroupName;
@property (nonatomic, copy) NSString *topicARN;
@property (nonatomic, copy) NSString *notificationType;

@end
