//
//  UARDSPurchaseReservedDBInstancesOfferingRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSPurchaseReservedDBInstancesOfferingRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UARDSReservedDBInstanceResponse.h"
#import "UARDSTag.h"

@interface UARDSPurchaseReservedDBInstancesOfferingRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UARDSPurchaseReservedDBInstancesOfferingRequest

@synthesize action=_action, version=_version, reservedDBInstancesOfferingID=_reservedDBInstancesOfferingID, reservedDBInstanceID=_reservedDBInstanceID, dBInstanceCount=_dBInstanceCount, tags=_tags;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"PurchaseReservedDBInstancesOffering"];
		[self setVersion:@"2014-10-31"];
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(tagAtIndex:) propertyName:@"tags"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addTag:) propertyName:@"tags"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UARDSReservedDBInstanceResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UARDSRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"reservedDBInstancesOfferingID": @"ReservedDBInstancesOfferingId",
        @"reservedDBInstanceID": @"ReservedDBInstanceId",
        @"dBInstanceCount": @"DBInstanceCount",
        @"tags": @"Tags.member"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)tagsJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONArrayTransformerWithModelClass:[UARDSTag class]];
}

+ (NSValueTransformer *)tagsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UARDSTag class]];
}

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UARDSPurchaseReservedDBInstancesOfferingRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UARDSPurchaseReservedDBInstancesOfferingRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UARDSPurchaseReservedDBInstancesOfferingRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UARDSPurchaseReservedDBInstancesOfferingRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop