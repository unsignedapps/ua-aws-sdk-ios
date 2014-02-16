//
//  UAEC2DescribeAddressesRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribeAddressesRequest.h"
#import "UAEC2DescribeAddressesResponse.h"
#import "UAEC2Filter.h"

@interface UAEC2DescribeAddressesRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAEC2DescribeAddressesRequest

@synthesize action=_action, version=_version, dryRun=_dryRun, publicIPs=_publicIPs, filters=_filters, allocationIDs=_allocationIDs;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"DescribeAddresses"];
		[self setVersion:@"2013-10-15"];
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
  return [NSValueTransformer mtl_JSONArrayTransformerWithModelClass:[UAEC2Filter class]];
}

+ (NSValueTransformer *)dryRunQueryStringTransformer
{
    return [MTLValueTransformer UA_JSONTransformerForBooleanString];
}

+ (NSValueTransformer *)filtersQueryStringTransformer
{
  return [NSValueTransformer mtl_QueryStringArrayTransformerWithModelClass:[UAEC2Filter class]];
}

- (void)addPublicIP:(NSString *)publicIP
{
	if (self.publicIPs == nil)
		[self setPublicIPs:[NSMutableArray array]];
	[self.publicIPs addObject:publicIP];
}
- (void)addFilter:(UAEC2Filter *)filter
{
	if (self.filters == nil)
		[self setFilters:[NSMutableArray array]];
	[self.filters addObject:filter];
}
- (void)addAllocationID:(NSString *)allocationID
{
	if (self.allocationIDs == nil)
		[self setAllocationIDs:[NSMutableArray array]];
	[self.allocationIDs addObject:allocationID];
}

#pragma mark - Invocation

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

@end
