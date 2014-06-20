//
//  UAELBModifyLoadBalancerAttributesRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBModifyLoadBalancerAttributesRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAELBModifyLoadBalancerAttributesResponse.h"
#import "UAELBLoadBalancerAttributes.h"

@interface UAELBModifyLoadBalancerAttributesRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAELBModifyLoadBalancerAttributesRequest

@synthesize action=_action, version=_version, loadBalancerName=_loadBalancerName, loadBalancerAttributes=_loadBalancerAttributes;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"ModifyLoadBalancerAttributes"];
		[self setVersion:@"2012-06-01"];
		
		
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAELBModifyLoadBalancerAttributesResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAELBRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"loadBalancerName": @"LoadBalancerName",
        @"loadBalancerAttributes": @"LoadBalancerAttributes"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)loadBalancerAttributesJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONDictionaryTransformerWithModelClass:[UAELBLoadBalancerAttributes class]];
}

+ (NSValueTransformer *)loadBalancerAttributesQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UAELBLoadBalancerAttributes class]];
}

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAELBModifyLoadBalancerAttributesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAELBModifyLoadBalancerAttributesRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAELBModifyLoadBalancerAttributesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAELBModifyLoadBalancerAttributesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop