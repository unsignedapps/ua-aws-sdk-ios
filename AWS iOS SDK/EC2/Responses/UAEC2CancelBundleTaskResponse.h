//
//  UAEC2CancelBundleTaskResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2BundleTask;

@interface UAEC2CancelBundleTaskResponse : UAEC2Response

@property (nonatomic, copy) UAEC2BundleTask *bundleTask;

@end
