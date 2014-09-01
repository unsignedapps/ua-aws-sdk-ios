//
//  UAMobileAnalytics.h
//  AWS iOS SDK
//
//  Created by Rob Amos on 1/09/2014.
//  Copyright (c) 2014 Unsigned Apps. All rights reserved.
//

#import <Foundation/Foundation.h>

@class UAMASession;

@interface UAMobileAnalytics : NSObject

/**
 * Starts monitoring sessions based on app open/close.
**/
+ (void)startSessionMonitoring;

/**
 * Stops monitoring sessions based on app open/close.
**/
+ (void)stopSessionMonitoring;

/**
 * Returns the currently active UAMASession.
**/
+ (UAMASession *)currentSession;

/**
 * Restarts the UAMASession and returns the new session.
**/
+ (UAMASession *)restartSession;

@end
