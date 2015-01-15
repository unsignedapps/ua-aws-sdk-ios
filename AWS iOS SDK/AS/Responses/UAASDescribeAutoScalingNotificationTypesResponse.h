//
//  UAASDescribeAutoScalingNotificationTypesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAASResponse.h"

@interface UAASDescribeAutoScalingNotificationTypesResponse : UAASResponse

@property (nonatomic, copy) NSArray *autoScalingNotificationTypes;

/**
 * Retrieves the NSString at the specified index.
**/
- (NSString *)autoScalingNotificationTypeAtIndex:(NSUInteger)index;

/**
 * Adds a AutoScalingNotificationType to the autoScalingNotificationTypes property.
 *
 * This will initialise autoScalingNotificationTypes with an empty mutable array if necessary.
**/
- (void)addAutoScalingNotificationType:(NSString *)autoScalingNotificationType;

@end
