//
//  UARDSDescribeReservedDBInstancesRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSDescribeReservedDBInstancesRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UARDSReservedDBInstanceMessage.h"
#import "UARDSFilter.h"

@interface UARDSDescribeReservedDBInstancesRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UARDSDescribeReservedDBInstancesRequest

@synthesize action=_action, version=_version, reservedDBInstanceID=_reservedDBInstanceID, reservedDBInstancesOfferingID=_reservedDBInstancesOfferingID, dBInstanceClass=_dBInstanceClass, duration=_duration, productDescription=_productDescription, offeringType=_offeringType, multiAZ=_multiAZ, filters=_filters, maxRecords=_maxRecords, marker=_marker;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"DescribeReservedDBInstances"];
		[self setVersion:@"2014-10-31"];
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(filterAtIndex:) propertyName:@"filters"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addFilter:) propertyName:@"filters"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UARDSReservedDBInstanceMessage class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UARDSRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"reservedDBInstanceID": @"ReservedDBInstanceId",
        @"reservedDBInstancesOfferingID": @"ReservedDBInstancesOfferingId",
        @"dBInstanceClass": @"DBInstanceClass",
        @"duration": @"Duration",
        @"productDescription": @"ProductDescription",
        @"offeringType": @"OfferingType",
        @"multiAZ": @"MultiAZ",
        @"filters": @"Filters.member",
        @"maxRecords": @"MaxRecords",
        @"marker": @"Marker"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)offeringTypeJSONTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UARDSReservedDBInstanceOfferingTypePartialUpfront), @(UARDSReservedDBInstanceOfferingTypeAllUpfront), @(UARDSReservedDBInstanceOfferingTypeNoUpfront) ]
                                               stringValues:@[ @"Partial Upfront", @"All Upfront", @" No Upfront" ]
                                               unknownValue:@(UARDSReservedDBInstanceOfferingTypeUnknown)];
}

+ (NSValueTransformer *)filtersJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONArrayTransformerWithModelClass:[UARDSFilter class]];
}

+ (NSValueTransformer *)offeringTypeQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UARDSReservedDBInstanceOfferingTypePartialUpfront), @(UARDSReservedDBInstanceOfferingTypeAllUpfront), @(UARDSReservedDBInstanceOfferingTypeNoUpfront) ]
                                               stringValues:@[ @"Partial Upfront", @"All Upfront", @" No Upfront" ]
                                               unknownValue:@(UARDSReservedDBInstanceOfferingTypeUnknown)];
}

+ (NSValueTransformer *)filtersQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UARDSFilter class]];
}

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UARDSDescribeReservedDBInstancesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UARDSDescribeReservedDBInstancesRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UARDSDescribeReservedDBInstancesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UARDSDescribeReservedDBInstancesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop