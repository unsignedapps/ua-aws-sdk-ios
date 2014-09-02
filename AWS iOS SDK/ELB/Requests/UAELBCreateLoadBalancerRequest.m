//
//  UAELBCreateLoadBalancerRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBCreateLoadBalancerRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAELBCreateLoadBalancerResponse.h"
#import "UAELBListener.h"
#import "UAELBTag.h"

@interface UAELBCreateLoadBalancerRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAELBCreateLoadBalancerRequest

@synthesize action=_action, version=_version, loadBalancerName=_loadBalancerName, listeners=_listeners, availabilityZones=_availabilityZones, subnets=_subnets, securityGroups=_securityGroups, scheme=_scheme, tags=_tags;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"CreateLoadBalancer"];
		[self setVersion:@"2012-06-01"];
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(listenerAtIndex:) propertyName:@"listeners"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(availabilityZoneAtIndex:) propertyName:@"availabilityZones"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(subnetAtIndex:) propertyName:@"subnets"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(securityGroupAtIndex:) propertyName:@"securityGroups"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(tagAtIndex:) propertyName:@"tags"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addListener:) propertyName:@"listeners"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addAvailabilityZone:) propertyName:@"availabilityZones"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addSubnet:) propertyName:@"subnets"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addSecurityGroup:) propertyName:@"securityGroups"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addTag:) propertyName:@"tags"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAELBCreateLoadBalancerResponse class];
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
        @"listeners": @"Listeners.member",
        @"availabilityZones": @"AvailabilityZones.member",
        @"subnets": @"Subnets.member",
        @"securityGroups": @"SecurityGroups.member",
        @"scheme": @"Scheme",
        @"tags": @"Tags.member"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)listenersJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONArrayTransformerWithModelClass:[UAELBListener class]];
}

+ (NSValueTransformer *)schemeJSONTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAELBSchemeInternetFacing), @(UAELBSchemeInternal) ]
                                               stringValues:@[ @"internet-facing", @"internal" ]
                                               unknownValue:@(UAELBSchemeUnknown)];
}

+ (NSValueTransformer *)tagsJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONArrayTransformerWithModelClass:[UAELBTag class]];
}

+ (NSValueTransformer *)listenersQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAELBListener class]];
}

+ (NSValueTransformer *)schemeQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAELBSchemeInternetFacing), @(UAELBSchemeInternal) ]
                                               stringValues:@[ @"internet-facing", @"internal" ]
                                               unknownValue:@(UAELBSchemeUnknown)];
}

+ (NSValueTransformer *)tagsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAELBTag class]];
}

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAELBCreateLoadBalancerRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAELBCreateLoadBalancerRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAELBCreateLoadBalancerRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAELBCreateLoadBalancerRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop