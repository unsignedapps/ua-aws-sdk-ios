//
//  UAEC2ModifyReservedInstancesRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2ModifyReservedInstancesRequest.h"
#import "UAEC2ModifyReservedInstancesResponse.h"
#import "UAEC2ReservedInstancesConfiguration.h"

@interface UAEC2ModifyReservedInstancesRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAEC2ModifyReservedInstancesRequest

@synthesize action=_action, version=_version, clientToken=_clientToken, reservedInstancesIDs=_reservedInstancesIDs, targetConfigurations=_targetConfigurations;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"ModifyReservedInstances"];
		[self setVersion:@"2013-10-15"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAEC2ModifyReservedInstancesResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Request queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"clientToken": @"ClientToken",
        @"reservedInstancesIDs": @"ReservedInstancesId",
        @"targetConfigurations": @"ReservedInstancesConfigurationSetItemType"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)targetConfigurationsJSONTransformer
{
  return [NSValueTransformer mtl_JSONArrayTransformerWithModelClass:[UAEC2ReservedInstancesConfiguration class]];
}

+ (NSValueTransformer *)targetConfigurationsQueryStringTransformer
{
  return [NSValueTransformer mtl_QueryStringArrayTransformerWithModelClass:[UAEC2ReservedInstancesConfiguration class]];
}

- (void)addReservedInstancesID:(NSString *)reservedInstancesID
{
	if (self.reservedInstancesIDs == nil)
		[self setReservedInstancesIDs:[NSMutableArray array]];
	[self.reservedInstancesIDs addObject:reservedInstancesID];
}
- (void)addTargetConfiguration:(UAEC2ReservedInstancesConfiguration *)targetConfiguration
{
	if (self.targetConfigurations == nil)
		[self setTargetConfigurations:[NSMutableArray array]];
	[self.targetConfigurations addObject:targetConfiguration];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAEC2ModifyReservedInstancesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAEC2ModifyReservedInstancesRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAEC2ModifyReservedInstancesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAEC2ModifyReservedInstancesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
