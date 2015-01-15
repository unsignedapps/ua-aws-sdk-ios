//
//  UAEC2DescribeReservedInstancesOfferingsRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribeReservedInstancesOfferingsRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2DescribeReservedInstancesOfferingsResponse.h"
#import "UAEC2Filter.h"

@interface UAEC2DescribeReservedInstancesOfferingsRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2DescribeReservedInstancesOfferingsRequest

@synthesize action=_action, version=_version, dryRun=_dryRun, reservedInstancesOfferingIDs=_reservedInstancesOfferingIDs, instanceType=_instanceType, availabilityZone=_availabilityZone, productDescription=_productDescription, filters=_filters, instanceTenancy=_instanceTenancy, offeringType=_offeringType, nextToken=_nextToken, maxResults=_maxResults, includeMarketplace=_includeMarketplace, minDuration=_minDuration, maxDuration=_maxDuration, maxInstanceCount=_maxInstanceCount;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"DescribeReservedInstancesOfferings"];
		[self setVersion:@"2014-10-01"];
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(reservedInstancesOfferingIDAtIndex:) propertyName:@"reservedInstancesOfferingIDs"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(filterAtIndex:) propertyName:@"filters"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addReservedInstancesOfferingID:) propertyName:@"reservedInstancesOfferingIDs"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addFilter:) propertyName:@"filters"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAEC2DescribeReservedInstancesOfferingsResponse class];
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
        @"reservedInstancesOfferingIDs": @"ReservedInstancesOfferingId",
        @"instanceType": @"InstanceType",
        @"availabilityZone": @"AvailabilityZone",
        @"productDescription": @"ProductDescription",
        @"filters": @"Filter",
        @"instanceTenancy": @"InstanceTenancy",
        @"offeringType": @"OfferingType",
        @"nextToken": @"NextToken",
        @"maxResults": @"MaxResults",
        @"includeMarketplace": @"IncludeMarketplace",
        @"minDuration": @"MinDuration",
        @"maxDuration": @"MaxDuration",
        @"maxInstanceCount": @"MaxInstanceCount"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)productDescriptionJSONTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2ReservedInstanceOfferingProductDescriptionLinuxUNIX), @(UAEC2ReservedInstanceOfferingProductDescriptionLinuxUNIXAmazonVPC), @(UAEC2ReservedInstanceOfferingProductDescriptionSUSELinux), @(UAEC2ReservedInstanceOfferingProductDescriptionSUSELinuxAmazonVPC), @(UAEC2ReservedInstanceOfferingProductDescriptionRedHatEnterpriseLinux), @(UAEC2ReservedInstanceOfferingProductDescriptionRedHatEnterpriseLinuxAmazonVPC), @(UAEC2ReservedInstanceOfferingProductDescriptionWindows), @(UAEC2ReservedInstanceOfferingProductDescriptionWindowsAmazonVPC), @(UAEC2ReservedInstanceOfferingProductDescriptionWindowswithSQLServerStandard), @(UAEC2ReservedInstanceOfferingProductDescriptionWindowswithSQLServerStandardAmazonVPC), @(UAEC2ReservedInstanceOfferingProductDescriptionWindowswithSQLServerWeb), @(UAEC2ReservedInstanceOfferingProductDescriptionWindowswithSQLServerWebAmazonVPC) ]
                                               stringValues:@[ @"Linux/UNIX", @"Linux/UNIX (Amazon VPC)", @"SUSE Linux", @"SUSE Linux (Amazon VPC)", @"Red Hat Enterprise Linux", @"Red Hat Enterprise Linux (Amazon VPC)", @"Windows", @"Windows (Amazon VPC)", @"Windows with SQL Server Standard", @"Windows with SQL Server Standard (Amazon VPC)", @"Windows with SQL Server Web", @"Windows with SQL Server Web (Amazon VPC)" ]
                                               unknownValue:@(UAEC2ReservedInstanceOfferingProductDescriptionUnknown)];
}

+ (NSValueTransformer *)filtersJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONArrayTransformerWithModelClass:[UAEC2Filter class]];
}

+ (NSValueTransformer *)instanceTenancyJSONTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2InstanceTenancyDefault), @(UAEC2InstanceTenancyDedicated) ]
                                               stringValues:@[ @"default", @"dedicated" ]
                                               unknownValue:@(UAEC2InstanceTenancyUnknown)];
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

+ (NSValueTransformer *)productDescriptionQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2ReservedInstanceOfferingProductDescriptionLinuxUNIX), @(UAEC2ReservedInstanceOfferingProductDescriptionLinuxUNIXAmazonVPC), @(UAEC2ReservedInstanceOfferingProductDescriptionSUSELinux), @(UAEC2ReservedInstanceOfferingProductDescriptionSUSELinuxAmazonVPC), @(UAEC2ReservedInstanceOfferingProductDescriptionRedHatEnterpriseLinux), @(UAEC2ReservedInstanceOfferingProductDescriptionRedHatEnterpriseLinuxAmazonVPC), @(UAEC2ReservedInstanceOfferingProductDescriptionWindows), @(UAEC2ReservedInstanceOfferingProductDescriptionWindowsAmazonVPC), @(UAEC2ReservedInstanceOfferingProductDescriptionWindowswithSQLServerStandard), @(UAEC2ReservedInstanceOfferingProductDescriptionWindowswithSQLServerStandardAmazonVPC), @(UAEC2ReservedInstanceOfferingProductDescriptionWindowswithSQLServerWeb), @(UAEC2ReservedInstanceOfferingProductDescriptionWindowswithSQLServerWebAmazonVPC) ]
                                               stringValues:@[ @"Linux/UNIX", @"Linux/UNIX (Amazon VPC)", @"SUSE Linux", @"SUSE Linux (Amazon VPC)", @"Red Hat Enterprise Linux", @"Red Hat Enterprise Linux (Amazon VPC)", @"Windows", @"Windows (Amazon VPC)", @"Windows with SQL Server Standard", @"Windows with SQL Server Standard (Amazon VPC)", @"Windows with SQL Server Web", @"Windows with SQL Server Web (Amazon VPC)" ]
                                               unknownValue:@(UAEC2ReservedInstanceOfferingProductDescriptionUnknown)];
}

+ (NSValueTransformer *)filtersQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2Filter class]];
}

+ (NSValueTransformer *)instanceTenancyQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2InstanceTenancyDefault), @(UAEC2InstanceTenancyDedicated) ]
                                               stringValues:@[ @"default", @"dedicated" ]
                                               unknownValue:@(UAEC2InstanceTenancyUnknown)];
}

+ (NSValueTransformer *)offeringTypeQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2ReservedInstanceOfferingTypeHeavyUtilization), @(UAEC2ReservedInstanceOfferingTypeMediumUtilization), @(UAEC2ReservedInstanceOfferingTypeLightUtilization) ]
                                               stringValues:@[ @"Heavy Utilization", @"Medium Utilization", @"Light Utilization" ]
                                               unknownValue:@(UAEC2ReservedInstanceOfferingTypeUnknown)];
}

+ (NSValueTransformer *)includeMarketplaceQueryStringTransformer
{
    return [UAMTLValueTransformer UA_JSONTransformerForBooleanString];
}

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAEC2DescribeReservedInstancesOfferingsRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAEC2DescribeReservedInstancesOfferingsRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAEC2DescribeReservedInstancesOfferingsRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAEC2DescribeReservedInstancesOfferingsRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop