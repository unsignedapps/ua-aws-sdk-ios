//
//  UAASDetachInstancesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAASResponse.h"

@class UAASActivity;

@interface UAASDetachInstancesResponse : UAASResponse

@property (nonatomic, copy) NSArray *activities;

/**
 * Retrieves the UAASActivity at the specified index.
**/
- (UAASActivity *)activityAtIndex:(NSUInteger)index;

/**
 * Adds a Activity to the activities property.
 *
 * This will initialise activities with an empty mutable array if necessary.
**/
- (void)addActivity:(UAASActivity *)activity;

@end
