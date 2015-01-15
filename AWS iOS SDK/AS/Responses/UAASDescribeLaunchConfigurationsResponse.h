//
//  UAASDescribeLaunchConfigurationsResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAASResponse.h"

@class UAASLaunchConfiguration;

@interface UAASDescribeLaunchConfigurationsResponse : UAASResponse

@property (nonatomic, copy) NSArray *launchConfigurations;
@property (nonatomic, copy) NSString *nextToken;

/**
 * Retrieves the UAASLaunchConfiguration at the specified index.
**/
- (UAASLaunchConfiguration *)launchConfigurationAtIndex:(NSUInteger)index;

/**
 * Adds a LaunchConfiguration to the launchConfigurations property.
 *
 * This will initialise launchConfigurations with an empty mutable array if necessary.
**/
- (void)addLaunchConfiguration:(UAASLaunchConfiguration *)launchConfiguration;

@end
