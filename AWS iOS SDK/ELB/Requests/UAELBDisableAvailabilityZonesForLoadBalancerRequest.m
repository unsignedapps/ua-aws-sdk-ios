//
//  UAELBDisableAvailabilityZonesForLoadBalancerRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBDisableAvailabilityZonesForLoadBalancerRequest.h"
#import "UAELBDisableAvailabilityZonesForLoadBalancerResponse.h"

@interface UAELBDisableAvailabilityZonesForLoadBalancerRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAELBDisableAvailabilityZonesForLoadBalancerRequest

@synthesize action=_action, version=_version, loadBalancerName=_loadBalancerName, availabilityZones=_availabilityZones;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"DisableAvailabilityZonesForLoadBalancer"];
		[self setVersion:@"2012-06-01"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAELBDisableAvailabilityZonesForLoadBalancerResponse class];
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
        @"availabilityZones": @"AvailabilityZones.member"
    }];
    return [keyPaths copy];
}

- (NSString *)availabilityZoneAtIndex:(NSUInteger)index
{
    if (self.availabilityZones == nil || index >= ([self.availabilityZones count]-1))
        return nil;

    return [self.availabilityZones objectAtIndex:index];
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

- (void)setAvailabilityZones:(NSMutableArray *)availabilityZones
{
	_availabilityZones = availabilityZones;
	
	if (![self.UA_dirtyProperties containsObject:@"availabilityZones"])
		[self.UA_dirtyProperties addObject:@"availabilityZones"];
}

- (void)addAvailabilityZone:(NSString *)availabilityZone
{
	if (self.availabilityZones == nil)
		[self setAvailabilityZones:[NSMutableArray array]];
	[self.availabilityZones addObject:availabilityZone];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAELBDisableAvailabilityZonesForLoadBalancerRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAELBDisableAvailabilityZonesForLoadBalancerRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAELBDisableAvailabilityZonesForLoadBalancerRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAELBDisableAvailabilityZonesForLoadBalancerRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
