//
//  UAEC2CreateNetworkInterfaceRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2CreateNetworkInterfaceRequest.h"
#import "UAEC2CreateNetworkInterfaceResponse.h"
#import "UAEC2PrivateIPAddressSpecification.h"

@interface UAEC2CreateNetworkInterfaceRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAEC2CreateNetworkInterfaceRequest

@synthesize action=_action, version=_version, subnetID=_subnetID, descriptionValue=_descriptionValue, privateIPAddress=_privateIPAddress, groups=_groups, privateIPAddresses=_privateIPAddresses, secondaryPrivateIPAddressCount=_secondaryPrivateIPAddressCount, dryRun=_dryRun;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"CreateNetworkInterface"];
		[self setVersion:@"2013-10-15"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAEC2CreateNetworkInterfaceResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Request queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"subnetID": @"SubnetId",
        @"descriptionValue": @"DescriptionValue",
        @"privateIPAddress": @"PrivateIpAddress",
        @"groups": @"SecurityGroupId",
        @"privateIPAddresses": @"PrivateIpAddresses",
        @"secondaryPrivateIPAddressCount": @"SecondaryPrivateIpAddressCount",
        @"dryRun": @"DryRun"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)privateIPAddressesJSONTransformer
{
  return [NSValueTransformer mtl_JSONArrayTransformerWithModelClass:[UAEC2PrivateIPAddressSpecification class]];
}

+ (NSValueTransformer *)privateIPAddressesQueryStringTransformer
{
  return [NSValueTransformer mtl_QueryStringArrayTransformerWithModelClass:[UAEC2PrivateIPAddressSpecification class]];
}

+ (NSValueTransformer *)dryRunQueryStringTransformer
{
    return [MTLValueTransformer UA_JSONTransformerForBooleanString];
}

- (void)addGroup:(NSString *)group
{
	if (self.groups == nil)
		[self setGroups:[NSMutableArray array]];
	[self.groups addObject:group];
}
- (void)addPrivateIPAddress:(UAEC2PrivateIPAddressSpecification *)privateIPAddress
{
	if (self.privateIPAddresses == nil)
		[self setPrivateIPAddresses:[NSMutableArray array]];
	[self.privateIPAddresses addObject:privateIPAddress];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAEC2CreateNetworkInterfaceRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAEC2CreateNetworkInterfaceRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAEC2CreateNetworkInterfaceRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAEC2CreateNetworkInterfaceRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
