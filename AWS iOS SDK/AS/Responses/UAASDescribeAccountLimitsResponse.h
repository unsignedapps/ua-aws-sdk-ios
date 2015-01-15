//
//  UAASDescribeAccountLimitsResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAASResponse.h"

@interface UAASDescribeAccountLimitsResponse : UAASResponse

@property (nonatomic, strong) NSNumber *maxNumberOfAutoScalingGroups;
@property (nonatomic, strong) NSNumber *maxNumberOfLaunchConfigurations;

@end
