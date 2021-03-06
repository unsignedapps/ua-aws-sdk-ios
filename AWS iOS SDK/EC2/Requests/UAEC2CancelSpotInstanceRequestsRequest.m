//
//  UAEC2CancelSpotInstanceRequestsRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2CancelSpotInstanceRequestsRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2CancelSpotInstanceRequestsResponse.h"

@interface UAEC2CancelSpotInstanceRequestsRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2CancelSpotInstanceRequestsRequest

@synthesize action=_action, version=_version, dryRun=_dryRun, spotInstanceRequestIDs=_spotInstanceRequestIDs;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"CancelSpotInstanceRequests"];
		[self setVersion:@"2014-05-01"];
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(spotInstanceRequestIDAtIndex:) propertyName:@"spotInstanceRequestIDs"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addSpotInstanceRequestID:) propertyName:@"spotInstanceRequestIDs"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAEC2CancelSpotInstanceRequestsResponse class];
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
        @"spotInstanceRequestIDs": @"SpotInstanceRequestId"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)dryRunQueryStringTransformer
{
    return [UAMTLValueTransformer UA_JSONTransformerForBooleanString];
}

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAEC2CancelSpotInstanceRequestsRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAEC2CancelSpotInstanceRequestsRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAEC2CancelSpotInstanceRequestsRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAEC2CancelSpotInstanceRequestsRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop