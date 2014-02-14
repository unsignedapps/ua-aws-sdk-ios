//
//  UAAWSServiceHealthStatusRequest.m
//  AWS iOS SDK
//
//  Copyright (c) Desto 2014.
//  Created by Rob Amos.
//
//

#import "UAAWSServiceHealthStatusRequest.h"
#import "UAAWSServiceHealthStatusResponse.h"

@interface UAAWSServiceHealthStatusRequest ()

@end

@implementation UAAWSServiceHealthStatusRequest

- (Class)UA_ResponseClass
{
	return [UAAWSServiceHealthStatusResponse class];
}

- (NSString *)UA_RequestPath
{
    return @"/data.json";
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAAWSServiceHealthStatusRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAAWSServiceHealthStatusRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAAWSServiceHealthStatusRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAAWSServiceHealthStatusRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
