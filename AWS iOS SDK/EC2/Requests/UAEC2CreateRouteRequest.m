//
//  UAEC2CreateRouteRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2CreateRouteRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2CreateRouteResponse.h"

@interface UAEC2CreateRouteRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2CreateRouteRequest

@synthesize action=_action, version=_version, dryRun=_dryRun, routeTableID=_routeTableID, destinationCidrBlock=_destinationCidrBlock, gatewayID=_gatewayID, instanceID=_instanceID, networkInterfaceID=_networkInterfaceID, vpcPeeringConnectionID=_vpcPeeringConnectionID;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"CreateRoute"];
		[self setVersion:@"2014-05-01"];
		
		
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAEC2CreateRouteResponse class];
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
        @"networkInterfaceID": @"NetworkInterfaceId",
        @"vpcPeeringConnectionID": @"VpcPeeringConnectionId"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)dryRunQueryStringTransformer
{
    return [UAMTLValueTransformer UA_JSONTransformerForBooleanString];
}

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAEC2CreateRouteRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAEC2CreateRouteRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAEC2CreateRouteRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAEC2CreateRouteRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop