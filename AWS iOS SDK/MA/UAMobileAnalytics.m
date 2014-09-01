//
//  UAMobileAnalytics.m
//  AWS iOS SDK
//
//  Created by Rob Amos on 1/09/2014.
//  Copyright (c) 2014 Unsigned Apps. All rights reserved.
//

#import "UAMobileAnalyticsClass.h"
#import "UAMASession.h"
#import "UAAWSOperationQueue.h"
#import "UAMADataTypes.h"
#import "UAMAEvent.h"
#import "UAMAPutEventsRequest.h"

@interface UAMobileAnalytics ()

+ (UAMobileAnalytics *)sharedInstance;

@property (nonatomic, strong) UAMASession *session;

- (void)startSessionMonitoring;
- (void)stopSessionMonitoring;

+ (void)sendEventOfType:(NSString *)eventType forSession:(UAMASession *)session;

@end

@implementation UAMobileAnalytics

@synthesize session=_session;

+ (UAMobileAnalytics *)sharedInstance
{
    static dispatch_once_t onceToken;
    static UAMobileAnalytics *sharedInstance = nil;
    dispatch_once(&onceToken, ^
    {
        sharedInstance = [[UAMobileAnalytics alloc] init];
    });
    
    return sharedInstance;
}

- (void)dealloc
{
    [[UAAWSOperationQueue sharedInstance] cancelAllRequestsForOwner:self];
}

#pragma mark - Session Monitoring

+ (void)startSessionMonitoring
{
    [[self sharedInstance] startSessionMonitoring];
}

+ (void)stopSessionMonitoring
{
    [[self sharedInstance] stopSessionMonitoring];
}

- (void)startSessionMonitoring
{
    // register for application level events
    NSNotificationCenter *center = [NSNotificationCenter defaultCenter];
    [center addObserver:self selector:@selector(applicationDidEnterBackground) name:UIApplicationDidEnterBackgroundNotification object:nil];
    [center addObserver:self selector:@selector(applicationWillEnterForeground) name:UIApplicationWillEnterForegroundNotification object:nil];
}

- (void)stopSessionMonitoring
{
    // remove ourselves from observers
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

#pragma mark - Session Monitoring Notifications

- (void)applicationWillEnterForeground
{
    [self.class sendEventOfType:UAMAEventTypeSessionResume forSession:self.session];
}

- (void)applicationDidEnterBackground
{
    [self.class sendEventOfType:UAMAEventTypeSessionPause forSession:self.session];
}

#pragma mark - Session Management

+ (UAMASession *)currentSession
{
    UAMobileAnalytics *sharedInstance = [self sharedInstance];

    // if we have no session active, restart to get a new one
    if (sharedInstance == nil)
        return [self restartSession];
    
    // otherwise, send the current one
    return sharedInstance.session;
}

+ (UAMASession *)restartSession
{
    UAMobileAnalytics *sharedInstance = [self sharedInstance];
    
    // if we have a session active we should close it
    if (sharedInstance.session != nil)
    {
        UAMASession *oldSession = sharedInstance.session;
        [oldSession setStopTime:[NSDate date]];
        [oldSession setDuration:[oldSession.stopTime timeIntervalSinceDate:oldSession.startTime]];
        [self sendEventOfType:UAMAEventTypeSessionStop forSession:oldSession];
    }
    
    // now then, lets just create a new one
    UAMASession *session = [[UAMASession alloc] init];
    [session setIdentifier:[NSUUID UUID]];
    [session setStartTime:[NSDate date]];
    [sharedInstance setSession:session];
    
    // now send the notification
    [self sendEventOfType:UAMAEventTypeSessionStart forSession:session];
    
    // return it on through
    return session;
}

#pragma mark - Sending session related events

+ (void)sendEventOfType:(NSString *)eventType forSession:(UAMASession *)session
{
    // create the event
    UAMAEvent *event = [[UAMAEvent alloc] init];
    [event setEventType:eventType];
    [event setSession:session];

    // now the request
    UAMAPutEventsRequest *request = [[UAMAPutEventsRequest alloc] init];
    [request addEvent:event];
    [request invokeWithOwner:[self sharedInstance] completionBlock:^(UAMAPutEventsResponse *response, NSError *error)
    {
        if (error != nil)
            NSLog(@"Unable to put Mobile Analytics session event %@: %@", eventType, error);
    }];
}

@end
