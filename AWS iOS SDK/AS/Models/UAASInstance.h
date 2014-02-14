//
//  UAASInstance.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAASModel.h"

@interface UAASInstance : UAASModel

@property (nonatomic, copy) NSString *instanceID;
@property (nonatomic, copy) NSString *availabilityZone;
@property (nonatomic) UAASInstanceLifecycleState lifecycleState;
@property (nonatomic, copy) NSString *healthStatus;
@property (nonatomic, copy) NSString *launchConfigurationName;

@end
