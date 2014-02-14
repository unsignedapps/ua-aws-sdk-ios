//
//  UAASDescribeAutoScalingGroupsResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAASResponse.h"

@class UAASAutoScalingGroup;

@interface UAASDescribeAutoScalingGroupsResponse : UAASResponse

@property (nonatomic, copy) NSArray *autoScalingGroups;
@property (nonatomic, copy) NSString *nextToken;

@end
