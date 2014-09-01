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
 * Change the default restart/resume timeout for sessions. If a session
 * has been paused (in the background) for longer than this value it is considered
 * to be a new session.
 *
 * Defaults to 30 seconds.
**/
@property (nonatomic) NSTimeInterval sessionTimeout;

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

/**
 * Closes the current UAMASession.
**/
+ (void)closeSession;

/**
 * Pauses the current UAMASession.
**/
+ (void)pauseSession;

/**
 * Resumes the current UAMASession.
 *
 * Note: if the -sessionTimeout value has passed since
 * the session was paused it will be restarted instead.
**/
+ (void)resumeSession;

@end
