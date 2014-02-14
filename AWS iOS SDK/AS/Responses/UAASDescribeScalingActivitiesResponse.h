//
//  UAASDescribeScalingActivitiesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAASResponse.h"

@class UAASActivity;

@interface UAASDescribeScalingActivitiesResponse : UAASResponse

@property (nonatomic, copy) NSArray *activities;
@property (nonatomic, copy) NSString *nextToken;

@end
