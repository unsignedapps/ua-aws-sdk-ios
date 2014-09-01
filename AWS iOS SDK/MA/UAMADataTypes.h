//
//  UAMADataTypes.h
//  AWS iOS SDK
//
//  Created by Rob Amos on 1/09/2014.
//  Copyright (c) 2014 Unsigned Apps. All rights reserved.
//

// Event Type Constants
static NSString * const UAMAEventTypeSessionStart = @"_session.start";
static NSString * const UAMAEventTypeSessionStop = @"_session.stop";
static NSString * const UAMAEventTypeSessionPause = @"_session.pause";
static NSString * const UAMAEventTypeSessionResume = @"_session.resume";


// Session Attributes
static NSString * const UAMAEventAttributeSessionIdentifierKey = @"_session.id";
static NSString * const UAMAEventAttributeSessionDurationKey = @"_session.duration";
static NSString * const UAMAEventAttributeSessionStartTimeKey = @"_session.startTime";
static NSString * const UAMAEventAttributeSessionStopTimeKey = @"_session.stopTime";