//
//  UAELBSetLoadBalancerListenerSSLCertificateRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBSetLoadBalancerListenerSSLCertificateRequest.h"
#import "UAELBSetLoadBalancerListenerSSLCertificateResponse.h"

@interface UAELBSetLoadBalancerListenerSSLCertificateRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAELBSetLoadBalancerListenerSSLCertificateRequest

@synthesize action=_action, version=_version, loadBalancerName=_loadBalancerName, loadBalancerPort=_loadBalancerPort, sSLCertificateID=_sSLCertificateID;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"SetLoadBalancerListenerSSLCertificate"];
		[self setVersion:@"2012-06-01"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAELBSetLoadBalancerListenerSSLCertificateResponse class];
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
        @"loadBalancerPort": @"LoadBalancerPort",
        @"sSLCertificateID": @"SSLCertificateId"
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

- (void)setLoadBalancerPort:(NSNumber *)loadBalancerPort
{
	_loadBalancerPort = loadBalancerPort;
	
	if (![self.UA_dirtyProperties containsObject:@"loadBalancerPort"])
		[self.UA_dirtyProperties addObject:@"loadBalancerPort"];
}

- (void)setSSLCertificateID:(NSString *)sSLCertificateID
{
	_sSLCertificateID = sSLCertificateID;
	
	if (![self.UA_dirtyProperties containsObject:@"sSLCertificateID"])
		[self.UA_dirtyProperties addObject:@"sSLCertificateID"];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAELBSetLoadBalancerListenerSSLCertificateRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAELBSetLoadBalancerListenerSSLCertificateRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAELBSetLoadBalancerListenerSSLCertificateRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAELBSetLoadBalancerListenerSSLCertificateRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
