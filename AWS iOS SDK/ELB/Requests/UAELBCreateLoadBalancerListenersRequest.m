//
//  UAELBCreateLoadBalancerListenersRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBCreateLoadBalancerListenersRequest.h"
#import "UAELBCreateLoadBalancerListenersResponse.h"
#import "UAELBListener.h"

@interface UAELBCreateLoadBalancerListenersRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAELBCreateLoadBalancerListenersRequest

@synthesize action=_action, version=_version, loadBalancerName=_loadBalancerName, listeners=_listeners;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"CreateLoadBalancerListeners"];
		[self setVersion:@"2012-06-01"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAELBCreateLoadBalancerListenersResponse class];
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
        @"listeners": @"Listeners.member"
    }];
    return [keyPaths copy];
}

- (UAELBListener *)listenerAtIndex:(NSUInteger)index
{
    if (self.listeners == nil || index >= ([self.listeners count]-1))
        return nil;

    return [self.listeners objectAtIndex:index];
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

- (void)setListeners:(NSMutableArray *)listeners
{
	_listeners = listeners;
	
	if (![self.UA_dirtyProperties containsObject:@"listeners"])
		[self.UA_dirtyProperties addObject:@"listeners"];
}

+ (NSValueTransformer *)listenersJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONArrayTransformerWithModelClass:[UAELBListener class]];
}

+ (NSValueTransformer *)listenersQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAELBListener class]];
}

- (void)addListener:(UAELBListener *)listener
{
	if (self.listeners == nil)
		[self setListeners:[NSMutableArray array]];
	[self.listeners addObject:listener];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAELBCreateLoadBalancerListenersRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAELBCreateLoadBalancerListenersRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAELBCreateLoadBalancerListenersRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAELBCreateLoadBalancerListenersRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
