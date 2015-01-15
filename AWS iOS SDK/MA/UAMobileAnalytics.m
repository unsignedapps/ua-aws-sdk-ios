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

- (instancetype)init
{
    if (self = [super init])
    {
        [self setSessionTimeout:30];
    }
    return self;
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
    [center addObserver:self selector:@selector(applicationDidEnterBackground:) name:UIApplicationDidEnterBackgroundNotification object:nil];
    [center addObserver:self selector:@selector(applicationWillEnterForeground) name:UIApplicationWillEnterForegroundNotification object:nil];
    
    // make sure we have a session running
    if (self.session == nil)
        [self.class restartSession];
}

- (void)stopSessionMonitoring
{
    // remove ourselves from observers
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    
    // if we have a session, close it
    if (self.session != nil)
        [self.class closeSession];
}

#pragma mark - Session Monitoring Notifications

- (void)applicationWillEnterForeground
{
    [self.class resumeSession];
}

- (void)applicationDidEnterBackground:(NSNotification *)note
{
    __block UIApplication *application = note.object;
    if (application == nil || ![application isKindOfClass:[UIApplication class]])
    {
        // we're not able to delay the backgrounding, no application to work with
        [self.class pauseSession];
        return;
    }

    // we're going to nicely ask the application to let us post this through
    __block UAMobileAnalytics *blockSelf = self;
    __block UIBackgroundTaskIdentifier taskIdentifier = [application beginBackgroundTaskWithExpirationHandler:^
    {
        [[UAAWSOperationQueue sharedInstance] cancelAllRequestsForOwner:blockSelf];
        taskIdentifier = UIBackgroundTaskInvalid;
    }];
    
    // ok, now that that is done, lets try pausing into the background
    [self.class pauseSessionWithCompletionBlock:^(UAMAPutEventsResponse *response, NSError *error)
    {
        [application endBackgroundTask:taskIdentifier];
    }];
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
        [self closeSession];
    
    // now then, lets just create a new one
    UAMASession *session = [[UAMASession alloc] init];
    [session setIdentifier:[NSUUID UUID]];
    [session setStartTime:[NSDate date]];
    [sharedInstance setSession:session];
    
    // now send the notification
    [self sendEventOfType:UAMAEventTypeSessionStart forSession:session completionBlock:NULL];
    
    // return it on through
    return session;
}

+ (void)closeSession
{
    UAMobileAnalytics *sharedInstance = [self sharedInstance];
    UAMASession *oldSession = sharedInstance.session;
    [oldSession setStopTime:[NSDate date]];
    [oldSession setDuration:[oldSession.stopTime timeIntervalSinceDate:oldSession.startTime]];
    [self sendEventOfType:UAMAEventTypeSessionStop forSession:oldSession completionBlock:NULL];
    [sharedInstance setSession:nil];
}

+ (void)pauseSession
{
    [self pauseSessionWithCompletionBlock:NULL];
}

+ (void)pauseSessionWithCompletionBlock:(UAMAPutEventsRequestCompletionBlock)block
{
    UAMobileAnalytics *sharedInstance = [self sharedInstance];
    [sharedInstance.session setPauseTime:[NSDate date]];
    [self sendEventOfType:UAMAEventTypeSessionPause forSession:sharedInstance.session completionBlock:block];
}

+ (void)resumeSession
{
    UAMobileAnalytics *sharedInstance = [self sharedInstance];
    
    // do we have an existing session?
    if (sharedInstance.session == nil)
    {
        [self restartSession];
        return;
    }
    
    // has the session timed out?
    UAMASession *session = sharedInstance.session;
    if (session.pauseTime != nil && [[NSDate date] timeIntervalSinceDate:session.pauseTime] > sharedInstance.sessionTimeout)
    {
        [self restartSession];
        return;
    }

    // all good, resume
    [self sendEventOfType:UAMAEventTypeSessionResume forSession:session completionBlock:NULL];
}

#pragma mark - Sending session related events

+ (void)sendEventOfType:(NSString *)eventType forSession:(UAMASession *)session completionBlock:(UAMAPutEventsRequestCompletionBlock)block
{
    // create the event
    UAMAEvent *event = [[UAMAEvent alloc] init];
    [event setEventType:eventType];
    [event setSession:session];

    // now the request
    UAMAPutEventsRequest *request = [[UAMAPutEventsRequest alloc] init];
    [request setQueuePriority:NSOperationQueuePriorityVeryLow];
    [request addEvent:event];
    
    [request invokeWithOwner:[self sharedInstance] completionBlock:^(UAMAPutEventsResponse *response, NSError *error)
    {
        if (error != nil)
            NSLog(@"Unable to put Mobile Analytics session event %@: %@", eventType, error);
        
        if (block != NULL)
            block(response, error);
    }];
}

#pragma mark - Sending Named Events

+ (void)putEventNamed:(NSString *)name
{
	// create the event
    UAMAEvent *event = [[UAMAEvent alloc] init];
    [event setEventType:name];
    [event setSession:[self currentSession]];
    
    // now the request
    UAMAPutEventsRequest *request = [[UAMAPutEventsRequest alloc] init];
    [request setQueuePriority:NSOperationQueuePriorityVeryLow];
    [request addEvent:event];
    
    [request invokeWithOwner:self completionBlock:^(UAMAPutEventsResponse *response, NSError *error)
    {
        if (error != nil)
            NSLog(@"Unable to put Mobile Analytics named event %@: %@", event.eventType, error);
    }];
}

@end
