//
//  UAEC2UnassignPrivateIPAddressesRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2UnassignPrivateIPAddressesRequest.h"
#import "UAEC2UnassignPrivateIPAddressesResponse.h"

@interface UAEC2UnassignPrivateIPAddressesRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAEC2UnassignPrivateIPAddressesRequest

@synthesize action=_action, version=_version, networkInterfaceID=_networkInterfaceID, privateIPAddresses=_privateIPAddresses;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"UnassignPrivateIpAddresses"];
		[self setVersion:@"2014-02-01"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAEC2UnassignPrivateIPAddressesResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Request queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"networkInterfaceID": @"NetworkInterfaceId",
        @"privateIPAddresses": @"PrivateIpAddress"
    }];
    return [keyPaths copy];
}

- (NSString *)privateIPAddressAtIndex:(NSUInteger)index
{
    if (self.privateIPAddresses == nil || index >= ([self.privateIPAddresses count]-1))
        return nil;

    return [self.privateIPAddresses objectAtIndex:index];
}

- (void)addPrivateIPAddress:(NSString *)privateIPAddress
{
	if (self.privateIPAddresses == nil)
		[self setPrivateIPAddresses:[NSMutableArray array]];
	[self.privateIPAddresses addObject:privateIPAddress];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAEC2UnassignPrivateIPAddressesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAEC2UnassignPrivateIPAddressesRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAEC2UnassignPrivateIPAddressesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAEC2UnassignPrivateIPAddressesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
