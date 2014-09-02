//
//  UAAWSOperationQueue.h
//  Kestrel
//
//  Created by Rob Amos on 3/10/2013.
//  Copyright (c) 2013 Desto. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UAAWSOperationAuthenticationDelegate.h"
#import "UAAWSCredentials.h"

static NSString * const UAAWSSDKVersion = @"0.6.3";

@class UAAWSRequest;

@interface UAAWSOperationQueue : NSOperationQueue <NSURLSessionDelegate>

/**
 * Whether we have cancelled all operations.
**/
@property (nonatomic, getter=isCancelled) BOOL cancelled;

/**
 * The delegate to use to obtain authentication information.
**/
@property (nonatomic, strong) id<UAAWSOperationAuthenticationDelegate> delegate;

/**
 * The session delegate
**/
@property (nonatomic, strong) NSURLSession *session;

/**
 * Returns the shared UAAWSOperationQueue instance.
**/
+ (id)sharedInstance __attribute__((const));

/**
 * Cancels the operation of the queue.
**/
- (void)cancel;

/**
 * Cancels all requests for the specified owner.
**/
- (void)cancelAllRequestsForOwner:(id)owner;

/**
 * Adds a request into the queue.
**/
- (void)addRequest:(UAAWSRequest *)request;

/**
 * Adds a bunch of requests into the queue and waits for them to be completed.
**/
- (void)addRequests:(NSArray *)requests waitUntilFinished:(BOOL)wait;

/**
 * Adds a request after the specified interval has ellapsed.
**/
- (void)addRequest:(UAAWSRequest *)request afterInterval:(NSTimeInterval)interval;

@end
