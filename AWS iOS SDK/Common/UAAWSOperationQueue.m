//
//  UAAWSOperationQueue.m
//  Kestrel
//
//  Created by Rob Amos on 3/10/2013.
//  Copyright (c) 2013 Desto. All rights reserved.
//

#import "UAAWSOperationQueue.h"
#import "UAAWSRequest.h"
#import "UAAWSRegion.h"
#import "UAAWSCredentials.h"

#pragma mark Private Methods

@interface UAAWSOperationQueue ()

- (UAAWSCredentials *)credentialsForRequest:(UAAWSRequest *)request;
- (UAAWSRegion)regionForRequest:(UAAWSRequest *)request;

@end

#pragma mark - Implementation

@implementation UAAWSOperationQueue

@synthesize cancelled=_cancelled, delegate=_delegate, session=_session;

+ (id)sharedInstance
{
    static dispatch_once_t onceToken;
    static UAAWSOperationQueue *awsQueue;
    dispatch_once(&onceToken, ^
    {
        awsQueue = [[UAAWSOperationQueue alloc] init];
    });
    return awsQueue;
}

// Initialisation
- (id)init
{
    if (self = [super init])
    {
        // we're not cancelled when we start
        [self setCancelled:NO];
        
        // nor suspended
        [self setSuspended:NO];
        
        // Create a NSURLSession for our use, private browsing style
        NSURLSessionConfiguration *privateBrowsing = [NSURLSessionConfiguration ephemeralSessionConfiguration];
        [self setSession:[NSURLSession sessionWithConfiguration:privateBrowsing delegate:self delegateQueue:self]];
    }
    return self;
}

#pragma mark - Adding operations

- (void)addRequest:(UAAWSRequest *)request
{
    [request setUA_Queue:self];
    [self addOperation:request];
}

- (void)addRequests:(NSArray *)requests waitUntilFinished:(BOOL)wait
{
    for (UAAWSRequest *request in requests)
        [request setUA_Queue:self];
    [self addOperations:requests waitUntilFinished:wait];
}

#pragma mark - Execution Management

- (void)cancel
{
    [self setCancelled:YES];
    [self cancelAllOperations];
}

- (void)cancelAllRequestsForOwner:(id)owner
{
    if (owner == nil || [self operationCount] == 0)
        return;
    
    for (NSOperation *op in self.operations)
    {
        if ([op isKindOfClass:[UAAWSRequest class]])
        {
            UAAWSRequest *request = (UAAWSRequest *)op;
            id innerOwner = request.UA_Owner;
            if (innerOwner != nil && [innerOwner isEqual:owner])
                [request cancel];
        }
    }
}

#pragma mark - Authentication Management

- (UAAWSCredentials *)credentialsForRequest:(UAAWSRequest *)request
{
    id<UAAWSOperationAuthenticationDelegate> delegate = self.delegate;
    if (delegate != nil && [delegate respondsToSelector:@selector(credentialsForRequest:)])
        return [delegate credentialsForRequest:request];
    return nil;
}

- (UAAWSRegion)regionForRequest:(UAAWSRequest *)request
{
    id<UAAWSOperationAuthenticationDelegate> delegate = self.delegate;
    if (delegate != nil && [delegate respondsToSelector:@selector(regionForRequest:)])
        return [delegate regionForRequest:request];
    return UAAWSRegionUnknown;
}


#pragma mark - NSURLSessionDelegate Methods

- (void)URLSession:(NSURLSession *)session didBecomeInvalidWithError:(NSError *)error
{
    NSLog(@"[%@] UAAWSOperationQueue's NSURLSession became invalid because %@", self, error);
    NSURLSessionConfiguration *privateBrowsing = [NSURLSessionConfiguration ephemeralSessionConfiguration];
    [self setSession:[NSURLSession sessionWithConfiguration:privateBrowsing delegate:self delegateQueue:self]];
}

@end
