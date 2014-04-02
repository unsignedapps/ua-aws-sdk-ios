//
//  UAEC2AssignPrivateIPAddressesRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2AssignPrivateIPAddressesRequest.h"
#import "UAEC2AssignPrivateIPAddresses.h"

@interface UAEC2AssignPrivateIPAddressesRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAEC2AssignPrivateIPAddressesRequest

@synthesize action=_action, version=_version, networkInterfaceID=_networkInterfaceID, privateIPAddresses=_privateIPAddresses, secondaryPrivateIPAddressCount=_secondaryPrivateIPAddressCount, allowReassignment=_allowReassignment;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"AssignPrivateIpAddresses"];
		[self setVersion:@"2014-02-01"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAEC2AssignPrivateIPAddresses class];
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
        @"privateIPAddresses": @"PrivateIpAddress",
        @"secondaryPrivateIPAddressCount": @"SecondaryPrivateIpAddressCount",
        @"allowReassignment": @"AllowReassignment"
    }];
    return [keyPaths copy];
}

- (NSString *)privateIPAddressAtIndex:(NSUInteger)index
{
    if (self.privateIPAddresses == nil || index >= ([self.privateIPAddresses count]-1))
        return nil;

    return [self.privateIPAddresses objectAtIndex:index];
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

- (void)setNetworkInterfaceID:(NSString *)networkInterfaceID
{
	_networkInterfaceID = networkInterfaceID;
	
	if (![self.UA_dirtyProperties containsObject:@"networkInterfaceID"])
		[self.UA_dirtyProperties addObject:@"networkInterfaceID"];
}

- (void)setPrivateIPAddresses:(NSMutableArray *)privateIPAddresses
{
	_privateIPAddresses = privateIPAddresses;
	
	if (![self.UA_dirtyProperties containsObject:@"privateIPAddresses"])
		[self.UA_dirtyProperties addObject:@"privateIPAddresses"];
}

- (void)setSecondaryPrivateIPAddressCount:(NSNumber *)secondaryPrivateIPAddressCount
{
	_secondaryPrivateIPAddressCount = secondaryPrivateIPAddressCount;
	
	if (![self.UA_dirtyProperties containsObject:@"secondaryPrivateIPAddressCount"])
		[self.UA_dirtyProperties addObject:@"secondaryPrivateIPAddressCount"];
}

- (void)setAllowReassignment:(BOOL)allowReassignment
{
	_allowReassignment = allowReassignment;
	
	if (![self.UA_dirtyProperties containsObject:@"allowReassignment"])
		[self.UA_dirtyProperties addObject:@"allowReassignment"];
}

+ (NSValueTransformer *)allowReassignmentQueryStringTransformer
{
    return [UAMTLValueTransformer UA_JSONTransformerForBooleanString];
}

- (void)addPrivateIPAddress:(NSString *)privateIPAddress
{
	if (self.privateIPAddresses == nil)
		[self setPrivateIPAddresses:[NSMutableArray array]];
	[self.privateIPAddresses addObject:privateIPAddress];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAEC2AssignPrivateIPAddressesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAEC2AssignPrivateIPAddressesRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAEC2AssignPrivateIPAddressesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAEC2AssignPrivateIPAddressesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
