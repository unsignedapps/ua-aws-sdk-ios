//
//  UAEC2DescribeAddressesRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribeAddressesRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2DescribeAddressesResponse.h"
#import "UAEC2Filter.h"

@interface UAEC2DescribeAddressesRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2DescribeAddressesRequest

@synthesize action=_action, version=_version, dryRun=_dryRun, publicIPs=_publicIPs, filters=_filters, allocationIDs=_allocationIDs;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"DescribeAddresses"];
		[self setVersion:@"2014-02-01"];
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(publicIPAtIndex:) propertyName:@"publicIPs"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(filterAtIndex:) propertyName:@"filters"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(allocationIDAtIndex:) propertyName:@"allocationIDs"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addPublicIP:) propertyName:@"publicIPs"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addFilter:) propertyName:@"filters"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addAllocationID:) propertyName:@"allocationIDs"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAEC2DescribeAddressesResponse class];
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
        @"publicIPs": @"PublicIp",
        @"filters": @"Filter",
        @"allocationIDs": @"AllocationId"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)filtersJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONArrayTransformerWithModelClass:[UAEC2Filter class]];
}

+ (NSValueTransformer *)dryRunQueryStringTransformer
{
    return [UAMTLValueTransformer UA_JSONTransformerForBooleanString];
}

+ (NSValueTransformer *)filtersQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2Filter class]];
}

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAEC2DescribeAddressesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAEC2DescribeAddressesRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAEC2DescribeAddressesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAEC2DescribeAddressesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop