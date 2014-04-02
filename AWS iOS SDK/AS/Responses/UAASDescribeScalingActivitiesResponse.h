//
//  UAASDescribeScalingActivitiesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASResponse.h"

@class UAASActivity;

@interface UAASDescribeScalingActivitiesResponse : UAASResponse

@property (nonatomic, copy) NSArray *activities;
@property (nonatomic, copy) NSString *nextToken;

/**
 * Retrieves the UAASActivity at the specified index.
**/
- (UAASActivity *)activityAtIndex:(NSUInteger)index;

@end
