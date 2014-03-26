//
//  UAEC2CreateReservedInstancesListingRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2CreateReservedInstancesListingRequest.h"
#import "UAEC2CreateReservedInstancesListingResponse.h"
#import "UAEC2PriceScheduleSpecification.h"

@interface UAEC2CreateReservedInstancesListingRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAEC2CreateReservedInstancesListingRequest

@synthesize action=_action, version=_version, reservedInstancesID=_reservedInstancesID, instanceCount=_instanceCount, priceSchedules=_priceSchedules, clientToken=_clientToken;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"CreateReservedInstancesListing"];
		[self setVersion:@"2014-02-01"];
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

- (void)setReservedInstancesID:(NSString *)reservedInstancesID
{
	_reservedInstancesID = reservedInstancesID;
	
	if (![self.UA_dirtyProperties containsObject:@"reservedInstancesID"])
		[self.UA_dirtyProperties addObject:@"reservedInstancesID"];
}

- (void)setInstanceCount:(NSNumber *)instanceCount
{
	_instanceCount = instanceCount;
	
	if (![self.UA_dirtyProperties containsObject:@"instanceCount"])
		[self.UA_dirtyProperties addObject:@"instanceCount"];
}

- (void)setPriceSchedules:(NSMutableArray *)priceSchedules
{
	_priceSchedules = priceSchedules;
	
	if (![self.UA_dirtyProperties containsObject:@"priceSchedules"])
		[self.UA_dirtyProperties addObject:@"priceSchedules"];
}

- (void)setClientToken:(NSString *)clientToken
{
	_clientToken = clientToken;
	
	if (![self.UA_dirtyProperties containsObject:@"clientToken"])
		[self.UA_dirtyProperties addObject:@"clientToken"];
}

+ (NSValueTransformer *)priceSchedulesJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONArrayTransformerWithModelClass:[UAEC2PriceScheduleSpecification class]];
}

+ (NSValueTransformer *)priceSchedulesQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2PriceScheduleSpecification class]];
}

- (void)addPriceSchedule:(UAEC2PriceScheduleSpecification *)priceSchedule
{
	if (self.priceSchedules == nil)
		[self setPriceSchedules:[NSMutableArray array]];
	[self.priceSchedules addObject:priceSchedule];
}

#pragma mark - Invocation

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

@end
