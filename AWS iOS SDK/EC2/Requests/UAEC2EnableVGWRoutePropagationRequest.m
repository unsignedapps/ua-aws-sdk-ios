//
//  UAEC2EnableVGWRoutePropagationRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2EnableVGWRoutePropagationRequest.h"
#import "UAEC2EnableVGWRoutePropagation.h"

@interface UAEC2EnableVGWRoutePropagationRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAEC2EnableVGWRoutePropagationRequest

@synthesize action=_action, version=_version, routeTableID=_routeTableID, gatewayID=_gatewayID;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"EnableVgwRoutePropagation"];
		[self setVersion:@"2014-02-01"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAEC2EnableVGWRoutePropagation class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Request queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"routeTableID": @"RouteTableId",
        @"gatewayID": @"GatewayId"
    }];
    return [keyPaths copy];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAEC2EnableVGWRoutePropagationRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAEC2EnableVGWRoutePropagationRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAEC2EnableVGWRoutePropagationRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAEC2EnableVGWRoutePropagationRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
