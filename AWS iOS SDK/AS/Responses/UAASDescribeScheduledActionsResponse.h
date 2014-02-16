//
//  UAASDescribeScheduledActionsResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASResponse.h"

@class UAASScheduledUpdateGroupAction;

@interface UAASDescribeScheduledActionsResponse : UAASResponse

@property (nonatomic, copy) NSArray *scheduledUpdateGroupActions;
@property (nonatomic, copy) NSString *nextToken;

@end
