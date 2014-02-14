//
//  UAASAlarm.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAASModel.h"

@interface UAASAlarm : UAASModel

@property (nonatomic, copy) NSString *alarmName;
@property (nonatomic, copy) NSString *alarmARN;

@end
