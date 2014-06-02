//
//  UAEC2CreateDHCPOptionsRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2CreateDHCPOptionsRequest.h"
#import "UAEC2CreateDHCPOptionsResponse.h"
#import "UAEC2DHCPConfiguration.h"

@interface UAEC2CreateDHCPOptionsRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAEC2CreateDHCPOptionsRequest

@synthesize action=_action, version=_version, dryRun=_dryRun, dhcpConfigurations=_dhcpConfigurations;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"CreateDhcpOptions"];
		[self setVersion:@"2014-02-01"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAEC2CreateDHCPOptionsResponse class];
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
        @"dhcpConfigurations": @"DhcpConfiguration"
    }];
    return [keyPaths copy];
}

- (UAEC2DHCPConfiguration *)dhcpConfigurationAtIndex:(NSUInteger)index
{
    if (self.dhcpConfigurations == nil || index >= ([self.dhcpConfigurations count]-1))
        return nil;

    return [self.dhcpConfigurations objectAtIndex:index];
}

+ (NSValueTransformer *)dhcpConfigurationsJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONArrayTransformerWithModelClass:[UAEC2DHCPConfiguration class]];
}

+ (NSValueTransformer *)dryRunQueryStringTransformer
{
    return [UAMTLValueTransformer UA_JSONTransformerForBooleanString];
}

+ (NSValueTransformer *)dhcpConfigurationsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2DHCPConfiguration class]];
}

- (void)addDHCPConfiguration:(UAEC2DHCPConfiguration *)dHCPConfiguration
{
	if (self.dhcpConfigurations == nil)
		[self setDhcpConfigurations:[NSMutableArray array]];
	[self.dhcpConfigurations addObject:dHCPConfiguration];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAEC2CreateDHCPOptionsRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAEC2CreateDHCPOptionsRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAEC2CreateDHCPOptionsRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAEC2CreateDHCPOptionsRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
