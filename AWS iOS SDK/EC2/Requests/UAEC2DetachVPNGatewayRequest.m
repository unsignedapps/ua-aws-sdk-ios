//
//  UAEC2DetachVPNGatewayRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DetachVPNGatewayRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2DetachVPNGatewayResponse.h"

@interface UAEC2DetachVPNGatewayRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2DetachVPNGatewayRequest

@synthesize action=_action, version=_version, dryRun=_dryRun, vpnGatewayID=_vpnGatewayID, vpcID=_vpcID;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"DetachVpnGateway"];
		[self setVersion:@"2014-10-01"];
		
		
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAEC2DetachVPNGatewayResponse class];
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

+ (NSValueTransformer *)dryRunQueryStringTransformer
{
    return [UAMTLValueTransformer UA_JSONTransformerForBooleanString];
}

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAEC2DetachVPNGatewayRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAEC2DetachVPNGatewayRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAEC2DetachVPNGatewayRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAEC2DetachVPNGatewayRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop