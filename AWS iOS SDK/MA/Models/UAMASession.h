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
 * The time that the session started.
**/
@property (nonatomic, strong) NSDate *startTime;

@end
