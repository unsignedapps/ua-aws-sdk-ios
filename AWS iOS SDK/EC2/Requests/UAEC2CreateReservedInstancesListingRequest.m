//
//  UAEC2CreateReservedInstancesListingRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2CreateReservedInstancesListingRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2CreateReservedInstancesListingResponse.h"
#import "UAEC2PriceScheduleSpecification.h"

@interface UAEC2CreateReservedInstancesListingRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2CreateReservedInstancesListingRequest

@synthesize action=_action, version=_version, reservedInstancesID=_reservedInstancesID, instanceCount=_instanceCount, priceSchedules=_priceSchedules, clientToken=_clientToken;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"CreateReservedInstancesListing"];
		[self setVersion:@"2014-05-01"];
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(priceScheduleAtIndex:) propertyName:@"priceSchedules"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addPriceSchedule:) propertyName:@"priceSchedules"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAEC2CreateReservedInstancesListingResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Request queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"reservedInstancesID": @"ReservedInstancesId",
        @"instanceCount": @"InstanceCount",
        @"priceSchedules": @"PriceSchedules",
        @"clientToken": @"ClientToken"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)priceSchedulesJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONArrayTransformerWithModelClass:[UAEC2PriceScheduleSpecification class]];
}

+ (NSValueTransformer *)priceSchedulesQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2PriceScheduleSpecification class]];
}

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAEC2CreateReservedInstancesListingRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAEC2CreateReservedInstancesListingRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAEC2CreateReservedInstancesListingRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAEC2CreateReservedInstancesListingRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop