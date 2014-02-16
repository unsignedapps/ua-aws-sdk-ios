//
//  UASNSDeleteEndpointRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UASNSDeleteEndpointRequest.h"
#import "UASNSDeleteEndpointResponse.h"

@interface UASNSDeleteEndpointRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UASNSDeleteEndpointRequest

@synthesize action=_action, version=_version, endpointARN=_endpointARN;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"DeleteEndpoint"];
		[self setVersion:@"2010-03-31"];
	}
	return self;
}

- (id)initWithEndpointARN:(NSString *)endpointARN
{
	if (self = [self init])
	{
		[self setEndpointARN:endpointARN];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UASNSDeleteEndpointResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UASNSRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"endpointARN": @"EndpointArn"
    }];
    return [keyPaths copy];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UASNSDeleteEndpointRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UASNSDeleteEndpointRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UASNSDeleteEndpointRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UASNSDeleteEndpointRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
