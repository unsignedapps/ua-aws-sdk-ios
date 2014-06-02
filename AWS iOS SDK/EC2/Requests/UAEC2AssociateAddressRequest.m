//
//  UAEC2AssociateAddressRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2AssociateAddressRequest.h"
#import "UAEC2AssociateAddressResponse.h"

@interface UAEC2AssociateAddressRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAEC2AssociateAddressRequest

@synthesize action=_action, version=_version, dryRun=_dryRun, instanceID=_instanceID, publicIP=_publicIP, allocationID=_allocationID, networkInterfaceID=_networkInterfaceID, privateIPAddress=_privateIPAddress, allowReassociation=_allowReassociation;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"AssociateAddress"];
		[self setVersion:@"2014-02-01"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAEC2AssociateAddressResponse class];
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
        @"instanceID": @"InstanceId",
        @"publicIP": @"PublicIp",
        @"allocationID": @"AllocationId",
        @"networkInterfaceID": @"NetworkInterfaceId",
        @"privateIPAddress": @"PrivateIpAddress",
        @"allowReassociation": @"AllowReassociation"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)dryRunQueryStringTransformer
{
    return [UAMTLValueTransformer UA_JSONTransformerForBooleanString];
}

+ (NSValueTransformer *)allowReassociationQueryStringTransformer
{
    return [UAMTLValueTransformer UA_JSONTransformerForBooleanString];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAEC2AssociateAddressRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAEC2AssociateAddressRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAEC2AssociateAddressRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAEC2AssociateAddressRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
