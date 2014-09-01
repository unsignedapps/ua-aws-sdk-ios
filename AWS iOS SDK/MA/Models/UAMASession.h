//
//  UAMASession.h
//  AWS iOS SDK
//
//  Created by Rob Amos on 1/09/2014.
//  Copyright (c) 2014 Unsigned Apps. All rights reserved.
//

#import "UAMAModel.h"

@interface UAMASession : UAMAModel <UAMTLJSONSerializing>

/**
 * An identifier for the session.
**/
@property (nonatomic, strong) NSUUID *identifier;

/**
 * A duration for the session.
**/
@property (nonatomic) NSTimeInterval duration;

/**
 * The time that the session started.
**/
@property (nonatomic, strong) NSDate *startTime;

/**
 * The time that the session stopped.
**/
@property (nonatomic, strong) NSDate *stopTime;

/**
 * The time that the session was last paused.
 *
 * This value is not transmitted to Mobile Analytics.
**/
@property (nonatomic, strong) NSDate *pauseTime;

@end
