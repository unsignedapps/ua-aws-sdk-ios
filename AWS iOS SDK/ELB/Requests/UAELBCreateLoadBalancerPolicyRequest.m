//
//  UAELBCreateLoadBalancerPolicyRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBCreateLoadBalancerPolicyRequest.h"
#import "UAELBCreateLoadBalancerPolicyResponse.h"
#import "UAELBPolicyAttribute.h"

@interface UAELBCreateLoadBalancerPolicyRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAELBCreateLoadBalancerPolicyRequest

@synthesize action=_action, version=_version, loadBalancerName=_loadBalancerName, policyName=_policyName, policyTypeName=_policyTypeName, policyAttributes=_policyAttributes;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"CreateLoadBalancerPolicy"];
		[self setVersion:@"2012-06-01"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAELBCreateLoadBalancerPolicyResponse class];
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
        @"policyName": @"PolicyName",
        @"policyTypeName": @"PolicyTypeName",
        @"policyAttributes": @"PolicyAttributes.member"
    }];
    return [keyPaths copy];
}

- (UAELBPolicyAttribute *)policyAttributeAtIndex:(NSUInteger)index
{
    if (self.policyAttributes == nil || index >= ([self.policyAttributes count]-1))
        return nil;

    return [self.policyAttributes objectAtIndex:index];
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

- (void)setLoadBalancerName:(NSString *)loadBalancerName
{
	_loadBalancerName = loadBalancerName;
	
	if (![self.UA_dirtyProperties containsObject:@"loadBalancerName"])
		[self.UA_dirtyProperties addObject:@"loadBalancerName"];
}

- (void)setPolicyName:(NSString *)policyName
{
	_policyName = policyName;
	
	if (![self.UA_dirtyProperties containsObject:@"policyName"])
		[self.UA_dirtyProperties addObject:@"policyName"];
}

- (void)setPolicyTypeName:(NSString *)policyTypeName
{
	_policyTypeName = policyTypeName;
	
	if (![self.UA_dirtyProperties containsObject:@"policyTypeName"])
		[self.UA_dirtyProperties addObject:@"policyTypeName"];
}

- (void)setPolicyAttributes:(NSMutableArray *)policyAttributes
{
	_policyAttributes = policyAttributes;
	
	if (![self.UA_dirtyProperties containsObject:@"policyAttributes"])
		[self.UA_dirtyProperties addObject:@"policyAttributes"];
}

+ (NSValueTransformer *)policyAttributesJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONArrayTransformerWithModelClass:[UAELBPolicyAttribute class]];
}

+ (NSValueTransformer *)policyAttributesQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAELBPolicyAttribute class]];
}

- (void)addPolicyAttribute:(UAELBPolicyAttribute *)policyAttribute
{
	if (self.policyAttributes == nil)
		[self setPolicyAttributes:[NSMutableArray array]];
	[self.policyAttributes addObject:policyAttribute];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAELBCreateLoadBalancerPolicyRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAELBCreateLoadBalancerPolicyRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAELBCreateLoadBalancerPolicyRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAELBCreateLoadBalancerPolicyRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
