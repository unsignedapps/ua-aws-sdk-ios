//
//  UAEC2AttachVPNGatewayRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2AttachVPNGatewayRequest.h"
#import "UAEC2AttachVPNGatewayResponse.h"

@interface UAEC2AttachVPNGatewayRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAEC2AttachVPNGatewayRequest

@synthesize action=_action, version=_version, dryRun=_dryRun, vpnGatewayID=_vpnGatewayID, vpcID=_vpcID;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"AttachVpnGateway"];
		[self setVersion:@"2013-10-15"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAEC2AttachVPNGatewayResponse class];
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
        @"vpnGatewayID": @"VpnGatewayId",
        @"vpcID": @"VpcId"
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

- (void)setVpnGatewayID:(NSString *)vpnGatewayID
{
	_vpnGatewayID = vpnGatewayID;
	
	if (![self.UA_dirtyProperties containsObject:@"vpnGatewayID"])
		[self.UA_dirtyProperties addObject:@"vpnGatewayID"];
}

- (void)setVpcID:(NSString *)vpcID
{
	_vpcID = vpcID;
	
	if (![self.UA_dirtyProperties containsObject:@"vpcID"])
		[self.UA_dirtyProperties addObject:@"vpcID"];
}

+ (NSValueTransformer *)dryRunQueryStringTransformer
{
    return [UAMTLValueTransformer UA_JSONTransformerForBooleanString];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAEC2AttachVPNGatewayRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAEC2AttachVPNGatewayRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAEC2AttachVPNGatewayRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAEC2AttachVPNGatewayRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
