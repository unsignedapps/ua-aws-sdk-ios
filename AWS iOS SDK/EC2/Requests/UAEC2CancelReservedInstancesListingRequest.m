//
//  UAEC2CancelReservedInstancesListingRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2CancelReservedInstancesListingRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2CancelReservedInstancesListingResponse.h"

@interface UAEC2CancelReservedInstancesListingRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2CancelReservedInstancesListingRequest

@synthesize action=_action, version=_version, reservedInstancesListingID=_reservedInstancesListingID;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"CancelReservedInstancesListing"];
		[self setVersion:@"2014-05-01"];
		
		
	}
	return self;
}

- (id)initWithReservedInstancesListingID:(NSString *)reservedInstancesListingID
{
	if (self = [self init])
	{
		[self setReservedInstancesListingID:reservedInstancesListingID];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAEC2CancelReservedInstancesListingResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Request queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"reservedInstancesListingID": @"ReservedInstancesListingId"
    }];
    return [keyPaths copy];
}

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAEC2CancelReservedInstancesListingRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAEC2CancelReservedInstancesListingRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAEC2CancelReservedInstancesListingRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAEC2CancelReservedInstancesListingRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop