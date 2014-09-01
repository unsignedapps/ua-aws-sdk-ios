//
//  UAMobileAnalytics.m
//  AWS iOS SDK
//
//  Created by Rob Amos on 1/09/2014.
//  Copyright (c) 2014 Unsigned Apps. All rights reserved.
//

#import "UAMobileAnalytics.h"
#import "UAMASession.h"
#import "UAAWSOperationQueue.h"

@interface UAMobileAnalytics ()

+ (UAMobileAnalytics *)sharedInstance;

@property (nonatomic, strong) UAMASession *session;

+ (void)sendStartEventForSession:(UAMASession *)session;
+ (void)sendCloseEventForSession:(UAMASession *)session;

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
        [self sendCloseEventForSession:sharedInstance.session];
    
    // now then, lets just create a new one
    UAMASession *session = [[UAMASession alloc] init];
    [session setIdentifier:[NSUUID UUID]];
    [session setStartTime:[NSDate date]];
    [sharedInstance setSession:session];
    
    // now send the notification
    [self sendStartEventForSession:session];
    
    // return it on through
    return session;
}

#pragma mark - Sending session related events

+ (void)sendStartEventForSession:(UAMASession *)session
{
    
}

+ (void)sendCloseEventForSession:(UAMASession *)session
{
    
}

@end
