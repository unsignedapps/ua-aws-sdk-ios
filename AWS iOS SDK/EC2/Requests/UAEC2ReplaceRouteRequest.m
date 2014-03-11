//
//  UAEC2ReplaceRouteRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2ReplaceRouteRequest.h"
#import "UAEC2ReplaceRouteResponse.h"

@interface UAEC2ReplaceRouteRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAEC2ReplaceRouteRequest

@synthesize action=_action, version=_version, dryRun=_dryRun, routeTableID=_routeTableID, destinationCidrBlock=_destinationCidrBlock, gatewayID=_gatewayID, instanceID=_instanceID, networkInterfaceID=_networkInterfaceID;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"ReplaceRoute"];
		[self setVersion:@"2013-10-15"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAEC2ReplaceRouteResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Request queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"dryRun": @"DryRun",
        @"routeTableID": @"RouteTableId",
        @"destinationCidrBlock": @"DestinationCidrBlock",
        @"gatewayID": @"GatewayId",
        @"instanceID": @"InstanceId",
        @"networkInterfaceID": @"NetworkInterfaceId"
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

- (void)setDryRun:(BOOL)dryRun
{
	_dryRun = dryRun;
	
	if (![self.UA_dirtyProperties containsObject:@"dryRun"])
		[self.UA_dirtyProperties addObject:@"dryRun"];
}

- (void)setRouteTableID:(NSString *)routeTableID
{
	_routeTableID = routeTableID;
	
	if (![self.UA_dirtyProperties containsObject:@"routeTableID"])
		[self.UA_dirtyProperties addObject:@"routeTableID"];
}

- (void)setDestinationCidrBlock:(NSString *)destinationCidrBlock
{
	_destinationCidrBlock = destinationCidrBlock;
	
	if (![self.UA_dirtyProperties containsObject:@"destinationCidrBlock"])
		[self.UA_dirtyProperties addObject:@"destinationCidrBlock"];
}

- (void)setGatewayID:(NSString *)gatewayID
{
	_gatewayID = gatewayID;
	
	if (![self.UA_dirtyProperties containsObject:@"gatewayID"])
		[self.UA_dirtyProperties addObject:@"gatewayID"];
}

- (void)setInstanceID:(NSString *)instanceID
{
	_instanceID = instanceID;
	
	if (![self.UA_dirtyProperties containsObject:@"instanceID"])
		[self.UA_dirtyProperties addObject:@"instanceID"];
}

- (void)setNetworkInterfaceID:(NSString *)networkInterfaceID
{
	_networkInterfaceID = networkInterfaceID;
	
	if (![self.UA_dirtyProperties containsObject:@"networkInterfaceID"])
		[self.UA_dirtyProperties addObject:@"networkInterfaceID"];
}

+ (NSValueTransformer *)dryRunQueryStringTransformer
{
    return [UAMTLValueTransformer UA_JSONTransformerForBooleanString];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAEC2ReplaceRouteRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAEC2ReplaceRouteRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAEC2ReplaceRouteRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAEC2ReplaceRouteRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
