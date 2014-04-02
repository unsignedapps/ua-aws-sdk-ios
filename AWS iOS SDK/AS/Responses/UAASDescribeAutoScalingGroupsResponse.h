//
//  UAASDescribeAutoScalingGroupsResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASResponse.h"

@class UAASAutoScalingGroup;

@interface UAASDescribeAutoScalingGroupsResponse : UAASResponse

@property (nonatomic, copy) NSArray *autoScalingGroups;
@property (nonatomic, copy) NSString *nextToken;

/**
 * Retrieves the UAASAutoScalingGroup at the specified index.
**/
- (UAASAutoScalingGroup *)autoScalingGroupAtIndex:(NSUInteger)index;

@end
