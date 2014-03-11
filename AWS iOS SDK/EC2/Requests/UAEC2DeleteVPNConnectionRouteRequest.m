//
//  UAEC2DeleteVPNConnectionRouteRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DeleteVPNConnectionRouteRequest.h"
#import "UAEC2DeleteVPNConnectionRouteResponse.h"

@interface UAEC2DeleteVPNConnectionRouteRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAEC2DeleteVPNConnectionRouteRequest

@synthesize action=_action, version=_version, vpnConnectionID=_vpnConnectionID, destinationCidrBlock=_destinationCidrBlock;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"DeleteVpnConnectionRoute"];
		[self setVersion:@"2013-10-15"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAEC2DeleteVPNConnectionRouteResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Request queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"vpnConnectionID": @"VpnConnectionId",
        @"destinationCidrBlock": @"DestinationCidrBlock"
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

- (void)setVpnConnectionID:(NSString *)vpnConnectionID
{
	_vpnConnectionID = vpnConnectionID;
	
	if (![self.UA_dirtyProperties containsObject:@"vpnConnectionID"])
		[self.UA_dirtyProperties addObject:@"vpnConnectionID"];
}

- (void)setDestinationCidrBlock:(NSString *)destinationCidrBlock
{
	_destinationCidrBlock = destinationCidrBlock;
	
	if (![self.UA_dirtyProperties containsObject:@"destinationCidrBlock"])
		[self.UA_dirtyProperties addObject:@"destinationCidrBlock"];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAEC2DeleteVPNConnectionRouteRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAEC2DeleteVPNConnectionRouteRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAEC2DeleteVPNConnectionRouteRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAEC2DeleteVPNConnectionRouteRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
