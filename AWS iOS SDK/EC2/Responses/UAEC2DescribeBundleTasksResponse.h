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

@end
