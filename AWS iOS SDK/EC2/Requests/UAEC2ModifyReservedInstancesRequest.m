//
//  UAEC2ModifyReservedInstancesRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2ModifyReservedInstancesRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2ModifyReservedInstancesResponse.h"
#import "UAEC2ReservedInstancesConfiguration.h"

@interface UAEC2ModifyReservedInstancesRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2ModifyReservedInstancesRequest

@synthesize action=_action, version=_version, clientToken=_clientToken, reservedInstancesIDs=_reservedInstancesIDs, targetConfigurations=_targetConfigurations;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"ModifyReservedInstances"];
		[self setVersion:@"2014-10-01"];
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(reservedInstancesIDAtIndex:) propertyName:@"reservedInstancesIDs"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(targetConfigurationAtIndex:) propertyName:@"targetConfigurations"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addReservedInstancesID:) propertyName:@"reservedInstancesIDs"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addTargetConfiguration:) propertyName:@"targetConfigurations"];
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
  return [NSValueTransformer UAMTL_JSONArrayTransformerWithModelClass:[UAEC2ReservedInstancesConfiguration class]];
}

+ (NSValueTransformer *)targetConfigurationsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2ReservedInstancesConfiguration class]];
}

/*#pragma mark - Invocation

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
*/
@end

#pragma clang diagnostic pop