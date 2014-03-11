//
//  UAELBCreateLBCookieStickinessPolicyRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBCreateLBCookieStickinessPolicyRequest.h"
#import "UAELBCreateLBCookieStickinessPolicyResponse.h"

@interface UAELBCreateLBCookieStickinessPolicyRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAELBCreateLBCookieStickinessPolicyRequest

@synthesize action=_action, version=_version, loadBalancerName=_loadBalancerName, policyName=_policyName, cookieExpirationPeriod=_cookieExpirationPeriod;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"CreateLBCookieStickinessPolicy"];
		[self setVersion:@"2012-06-01"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAELBCreateLBCookieStickinessPolicyResponse class];
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
        @"cookieExpirationPeriod": @"CookieExpirationPeriod"
    }];
    return [keyPaths copy];
}

- (void)setAction:(NSString *)action
{
	_action = action;
	
	if (![self.UA_dirtyProperties containsObject:@"action"])
		[self.UA_dirtyProperties addObject:@"action"];
}

- (void)setVersion:(NSString *)version
{
	_version = version;
	
	if (![self.UA_dirtyProperties containsObject:@"version"])
		[self.UA_dirtyProperties addObject:@"version"];
}

- (void)setLoadBalancerName:(NSString *)loadBalancerName
{
	_loadBalancerName = loadBalancerName;
	
	if (![self.UA_dirtyProperties containsObject:@"loadBalancerName"])
		[self.UA_dirtyProperties addObject:@"loadBalancerName"];
}

- (void)setPolicyName:(NSString *)policyName
{
	_policyName = policyName;
	
	if (![self.UA_dirtyProperties containsObject:@"policyName"])
		[self.UA_dirtyProperties addObject:@"policyName"];
}

- (void)setCookieExpirationPeriod:(NSNumber *)cookieExpirationPeriod
{
	_cookieExpirationPeriod = cookieExpirationPeriod;
	
	if (![self.UA_dirtyProperties containsObject:@"cookieExpirationPeriod"])
		[self.UA_dirtyProperties addObject:@"cookieExpirationPeriod"];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAELBCreateLBCookieStickinessPolicyRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAELBCreateLBCookieStickinessPolicyRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAELBCreateLBCookieStickinessPolicyRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAELBCreateLBCookieStickinessPolicyRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
