//
//  UAASDescribeLaunchConfigurationsResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAASResponse.h"

@class UAASLaunchConfiguration;

@interface UAASDescribeLaunchConfigurationsResponse : UAASResponse

@property (nonatomic, copy) NSArray *launchConfigurations;
@property (nonatomic, copy) NSString *nextToken;

@end
