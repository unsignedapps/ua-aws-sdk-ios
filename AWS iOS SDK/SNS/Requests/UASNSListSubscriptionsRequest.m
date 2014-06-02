//
//  UASNSListSubscriptionsRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UASNSListSubscriptionsRequest.h"
#import "UASNSListSubscriptionsResponse.h"

@interface UASNSListSubscriptionsRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UASNSListSubscriptionsRequest

@synthesize action=_action, version=_version, nextToken=_nextToken;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"ListSubscriptions"];
		[self setVersion:@"2010-03-31"];
	}
	return self;
}

- (id)initWithNextToken:(NSString *)nextToken
{
	if (self = [self init])
	{
		[self setNextToken:nextToken];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UASNSListSubscriptionsResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UASNSRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"nextToken": @"NextToken"
    }];
    return [keyPaths copy];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UASNSListSubscriptionsRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UASNSListSubscriptionsRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UASNSListSubscriptionsRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UASNSListSubscriptionsRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
