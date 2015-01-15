//
//  UAELBCreateAppCookieStickinessPolicyRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBCreateAppCookieStickinessPolicyRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAELBCreateAppCookieStickinessPolicyResponse.h"

@interface UAELBCreateAppCookieStickinessPolicyRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAELBCreateAppCookieStickinessPolicyRequest

@synthesize action=_action, version=_version, loadBalancerName=_loadBalancerName, policyName=_policyName, cookieName=_cookieName;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"CreateAppCookieStickinessPolicy"];
		[self setVersion:@"2012-06-01"];
		
		
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAELBCreateAppCookieStickinessPolicyResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAELBRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"loadBalancerName": @"LoadBalancerName",
        @"policyName": @"PolicyName",
        @"cookieName": @"CookieName"
    }];
    return [keyPaths copy];
}

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAELBCreateAppCookieStickinessPolicyRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAELBCreateAppCookieStickinessPolicyRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAELBCreateAppCookieStickinessPolicyRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAELBCreateAppCookieStickinessPolicyRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop