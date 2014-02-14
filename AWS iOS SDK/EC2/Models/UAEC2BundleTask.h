//
//  UAEC2BundleTask.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@class UAEC2BundleInstanceStorage, UAEC2BundleTaskError;

@interface UAEC2BundleTask : UAEC2Model

@property (nonatomic, copy) NSString *instanceID;
@property (nonatomic, copy) NSString *bundleID;
@property (nonatomic) UAEC2BundleTaskState state;
@property (nonatomic, copy) NSDate *startTime;
@property (nonatomic, copy) NSDate *updateTime;
@property (nonatomic, copy) UAEC2BundleInstanceStorage *storage;
@property (nonatomic, copy) NSString *progress;
@property (nonatomic, copy) UAEC2BundleTaskError *bundleTaskError;

@end
