//
//  UAASDescribeLifecycleHookTypesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAASResponse.h"

@interface UAASDescribeLifecycleHookTypesResponse : UAASResponse

@property (nonatomic, copy) NSArray *lifecycleHookTypes;

/**
 * Retrieves the NSString at the specified index.
**/
- (NSString *)lifecycleHookTypeAtIndex:(NSUInteger)index;

/**
 * Adds a LifecycleHookType to the lifecycleHookTypes property.
 *
 * This will initialise lifecycleHookTypes with an empty mutable array if necessary.
**/
- (void)addLifecycleHookType:(NSString *)lifecycleHookType;

@end
