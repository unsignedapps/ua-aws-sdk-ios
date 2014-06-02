//
//  UAIAMListUserPoliciesRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMListUserPoliciesRequest.h"
#import "UAIAMListUserPoliciesResponse.h"

@interface UAIAMListUserPoliciesRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAIAMListUserPoliciesRequest

@synthesize action=_action, version=_version, userName=_userName, marker=_marker, maxItems=_maxItems;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"ListUserPolicies"];
		[self setVersion:@"2010-05-08"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAIAMListUserPoliciesResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAIAMRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"userName": @"UserName",
        @"marker": @"Marker",
        @"maxItems": @"MaxItems"
    }];
    return [keyPaths copy];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAIAMListUserPoliciesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAIAMListUserPoliciesRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAIAMListUserPoliciesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAIAMListUserPoliciesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
