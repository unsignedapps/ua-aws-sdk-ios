//
//  UAMAEvent.h
//  AWS iOS SDK
//
//  Created by Rob Amos on 1/09/2014.
//  Copyright (c) 2014 Unsigned Apps. All rights reserved.
//

#import "UAMAModel.h"

@class UAMASession;

@interface UAMAEvent : UAMAModel <UAMTLJSONSerializing>

/**
 * The name of the event.
 *
 * This identifies the event that occured in your app. This is used for grouping and aggregating
 * like events together for reporting purposes.
 *
 * Some constants exist for this. See UAMAEventTypeSessionStart for more.
**/
@property (nonatomic, copy) NSString *eventType;

/**
 * The time that the event occured.
**/
@property (nonatomic, strong) NSDate *timestamp;

/**
 * A dictionary of key/value attribute pairs to give additional context to the 
 * event.
 *
 * These are entirely custom, but it is expected that the key and objects be NSStrings.
 *
 * The key can be up to 50 characters, the value 255.
**/
@property (nonatomic, strong) NSMutableDictionary *attributes;

/**
 * Sets an attribute for the given key.
**/
- (void)setAttribute:(NSString *)attribute forKey:(NSString *)key;

/**
 * Gets the attribute for the given key.
**/
- (NSString *)attributeForKey:(NSString *)key;

/**
 * A dictionary of key/value pairs that give additional *measurable* context to the event.
 *
 * These are entirely custom, but it is expected that the key is a NSString, and the values
 * NSNumbers.
 *
 * The key can be up to 50 characters.
**/
@property (nonatomic, strong) NSMutableDictionary *metrics;

/**
 * Sets the metric for the given key.
 **/
- (void)setMetric:(NSNumber *)metric forKey:(NSString *)key;

/**
 * Gets the attribute for the given key.
**/
- (NSNumber *)metricForKey:(NSString *)key;

/**
 * The current session information.
 *
 * By default, this will be set to the current session as managed by +[UAMobileAnalytics currentSession].
**/
@property (nonatomic, strong) UAMASession *session;

/**
 * The version of the session.
 *
 * Must always be v2.0, for some reason.
**/
@property (nonatomic, copy) NSString *version;

@end
