//
//  UAEC2DescribeBundleTasksResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2BundleTask;

@interface UAEC2DescribeBundleTasksResponse : UAEC2Response

@property (nonatomic, copy) NSArray *bundleTasks;

/**
 * Retrieves the UAEC2BundleTask at the specified index.
**/
- (UAEC2BundleTask *)bundleTaskAtIndex:(NSUInteger)index;

/**
 * Adds a BundleTask to the bundleTasks property.
 *
 * This will initialise bundleTasks with an empty mutable array if necessary.
**/
- (void)addBundleTask:(UAEC2BundleTask *)bundleTask;

@end
