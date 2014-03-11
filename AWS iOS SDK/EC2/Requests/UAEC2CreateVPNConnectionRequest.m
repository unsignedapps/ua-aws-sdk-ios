//
//  UAEC2CreateVPNConnectionRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2CreateVPNConnectionRequest.h"
#import "UAEC2CreateVPNConnectionResponse.h"
#import "UAEC2Options.h"

@interface UAEC2CreateVPNConnectionRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAEC2CreateVPNConnectionRequest

@synthesize action=_action, version=_version, dryRun=_dryRun, type=_type, customerGatewayID=_customerGatewayID, vpnGatewayID=_vpnGatewayID, options=_options;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"CreateVpnConnection"];
		[self setVersion:@"2013-10-15"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAEC2CreateVPNConnectionResponse class];
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
        @"type": @"Type",
        @"customerGatewayID": @"CustomerGatewayId",
        @"vpnGatewayID": @"VpnGatewayId",
        @"options": @"Options"
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

- (void)setType:(NSString *)type
{
	_type = type;
	
	if (![self.UA_dirtyProperties containsObject:@"type"])
		[self.UA_dirtyProperties addObject:@"type"];
}

- (void)setCustomerGatewayID:(NSString *)customerGatewayID
{
	_customerGatewayID = customerGatewayID;
	
	if (![self.UA_dirtyProperties containsObject:@"customerGatewayID"])
		[self.UA_dirtyProperties addObject:@"customerGatewayID"];
}

- (void)setVpnGatewayID:(NSString *)vpnGatewayID
{
	_vpnGatewayID = vpnGatewayID;
	
	if (![self.UA_dirtyProperties containsObject:@"vpnGatewayID"])
		[self.UA_dirtyProperties addObject:@"vpnGatewayID"];
}

- (void)setOptions:(UAEC2Options *)options
{
	_options = options;
	
	if (![self.UA_dirtyProperties containsObject:@"options"])
		[self.UA_dirtyProperties addObject:@"options"];
}

+ (NSValueTransformer *)optionsJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONDictionaryTransformerWithModelClass:[UAEC2Options class]];
}

+ (NSValueTransformer *)dryRunQueryStringTransformer
{
    return [UAMTLValueTransformer UA_JSONTransformerForBooleanString];
}

+ (NSValueTransformer *)optionsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UAEC2Options class]];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAEC2CreateVPNConnectionRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAEC2CreateVPNConnectionRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAEC2CreateVPNConnectionRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAEC2CreateVPNConnectionRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
