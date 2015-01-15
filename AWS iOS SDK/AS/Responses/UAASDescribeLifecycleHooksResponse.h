//
//  UAASDescribeLifecycleHooksResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAASResponse.h"

@class UAASLifecycleHook;

@interface UAASDescribeLifecycleHooksResponse : UAASResponse

@property (nonatomic, copy) NSArray *lifecycleHooks;

/**
 * Retrieves the UAASLifecycleHook at the specified index.
**/
- (UAASLifecycleHook *)lifecycleHookAtIndex:(NSUInteger)index;

/**
 * Adds a LifecycleHook to the lifecycleHooks property.
 *
 * This will initialise lifecycleHooks with an empty mutable array if necessary.
**/
- (void)addLifecycleHook:(UAASLifecycleHook *)lifecycleHook;

@end
