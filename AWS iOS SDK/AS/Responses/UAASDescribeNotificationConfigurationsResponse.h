//
//  UAASDescribeNotificationConfigurationsResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAASResponse.h"

@class UAASNotificationConfiguration;

@interface UAASDescribeNotificationConfigurationsResponse : UAASResponse

@property (nonatomic, copy) NSArray *notificationConfigurations;
@property (nonatomic, copy) NSString *nextToken;

/**
 * Retrieves the UAASNotificationConfiguration at the specified index.
**/
- (UAASNotificationConfiguration *)notificationConfigurationAtIndex:(NSUInteger)index;

/**
 * Adds a NotificationConfiguration to the notificationConfigurations property.
 *
 * This will initialise notificationConfigurations with an empty mutable array if necessary.
**/
- (void)addNotificationConfiguration:(UAASNotificationConfiguration *)notificationConfiguration;

@end
