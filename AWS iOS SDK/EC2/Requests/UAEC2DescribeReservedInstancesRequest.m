//
//  UAEC2DescribeReservedInstancesRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribeReservedInstancesRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2DescribeReservedInstancesResponse.h"
#import "UAEC2Filter.h"

@interface UAEC2DescribeReservedInstancesRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2DescribeReservedInstancesRequest

@synthesize action=_action, version=_version, dryRun=_dryRun, reservedInstancesIDs=_reservedInstancesIDs, filters=_filters, offeringType=_offeringType;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"DescribeReservedInstances"];
		[self setVersion:@"2014-05-01"];
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(reservedInstancesIDAtIndex:) propertyName:@"reservedInstancesIDs"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(filterAtIndex:) propertyName:@"filters"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addReservedInstancesID:) propertyName:@"reservedInstancesIDs"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addFilter:) propertyName:@"filters"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAEC2DescribeReservedInstancesResponse class];
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
        @"reservedInstancesIDs": @"ReservedInstancesId",
        @"filters": @"Filter",
        @"offeringType": @"OfferingType"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)filtersJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONArrayTransformerWithModelClass:[UAEC2Filter class]];
}

+ (NSValueTransformer *)offeringTypeJSONTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2ReservedInstanceOfferingTypeHeavyUtilization), @(UAEC2ReservedInstanceOfferingTypeMediumUtilization), @(UAEC2ReservedInstanceOfferingTypeLightUtilization) ]
                                               stringValues:@[ @"Heavy Utilization", @"Medium Utilization", @"Light Utilization" ]
                                               unknownValue:@(UAEC2ReservedInstanceOfferingTypeUnknown)];
}

+ (NSValueTransformer *)dryRunQueryStringTransformer
{
    return [UAMTLValueTransformer UA_JSONTransformerForBooleanString];
}

+ (NSValueTransformer *)filtersQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2Filter class]];
}

+ (NSValueTransformer *)offeringTypeQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2ReservedInstanceOfferingTypeHeavyUtilization), @(UAEC2ReservedInstanceOfferingTypeMediumUtilization), @(UAEC2ReservedInstanceOfferingTypeLightUtilization) ]
                                               stringValues:@[ @"Heavy Utilization", @"Medium Utilization", @"Light Utilization" ]
                                               unknownValue:@(UAEC2ReservedInstanceOfferingTypeUnknown)];
}

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAEC2DescribeReservedInstancesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAEC2DescribeReservedInstancesRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAEC2DescribeReservedInstancesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAEC2DescribeReservedInstancesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop