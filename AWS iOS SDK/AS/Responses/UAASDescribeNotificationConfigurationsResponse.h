//
//  UAASDescribeNotificationConfigurationsResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASResponse.h"

@class UAASNotificationConfiguration;

@interface UAASDescribeNotificationConfigurationsResponse : UAASResponse

@property (nonatomic, copy) NSArray *notificationConfigurations;
@property (nonatomic, copy) NSString *nextToken;

@end
