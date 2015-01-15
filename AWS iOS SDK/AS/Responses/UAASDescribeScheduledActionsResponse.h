//
//  UAASDescribeScheduledActionsResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAASResponse.h"

@class UAASScheduledUpdateGroupAction;

@interface UAASDescribeScheduledActionsResponse : UAASResponse

@property (nonatomic, copy) NSArray *scheduledUpdateGroupActions;
@property (nonatomic, copy) NSString *nextToken;

/**
 * Retrieves the UAASScheduledUpdateGroupAction at the specified index.
**/
- (UAASScheduledUpdateGroupAction *)scheduledUpdateGroupActionAtIndex:(NSUInteger)index;

/**
 * Adds a ScheduledUpdateGroupAction to the scheduledUpdateGroupActions property.
 *
 * This will initialise scheduledUpdateGroupActions with an empty mutable array if necessary.
**/
- (void)addScheduledUpdateGroupAction:(UAASScheduledUpdateGroupAction *)scheduledUpdateGroupAction;

@end
