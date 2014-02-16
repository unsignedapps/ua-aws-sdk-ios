//
//  UAELBCreateLoadBalancerRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBCreateLoadBalancerRequest.h"
#import "UAELBCreateLoadBalancerResponse.h"
#import "UAELBListener.h"

@interface UAELBCreateLoadBalancerRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAELBCreateLoadBalancerRequest

@synthesize action=_action, version=_version, loadBalancerName=_loadBalancerName, listeners=_listeners, availabilityZones=_availabilityZones, subnets=_subnets, securityGroups=_securityGroups, scheme=_scheme;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"CreateLoadBalancer"];
		[self setVersion:@"2012-06-01"];
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
        @"scheme": @"Scheme"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)listenersJSONTransformer
{
  return [NSValueTransformer mtl_JSONArrayTransformerWithModelClass:[UAELBListener class]];
}

+ (NSValueTransformer *)schemeJSONTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value)
    {
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"internet-facing"])
		    return @(UAELBSchemeInternetFacing);
		if ([value isEqualToString:@"internal"])
		    return @(UAELBSchemeInternal);

		return @(UAELBSchemeUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAELBScheme castValue = (UAELBScheme)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAELBSchemeInternetFacing:
			    return @"internet-facing";
			case UAELBSchemeInternal:
			    return @"internal";

			case UAELBSchemeUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)listenersQueryStringTransformer
{
  return [NSValueTransformer mtl_QueryStringArrayTransformerWithModelClass:[UAELBListener class]];
}

+ (NSValueTransformer *)schemeQueryStringTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value)
    {
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"internet-facing"])
		    return @(UAELBSchemeInternetFacing);
		if ([value isEqualToString:@"internal"])
		    return @(UAELBSchemeInternal);

		return @(UAELBSchemeUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAELBScheme castValue = (UAELBScheme)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAELBSchemeInternetFacing:
			    return @"internet-facing";
			case UAELBSchemeInternal:
			    return @"internal";

			case UAELBSchemeUnknown:
			default:
				return nil;
        }
    }];
}

- (void)addListener:(UAELBListener *)listener
{
	if (self.listeners == nil)
		[self setListeners:[NSMutableArray array]];
	[self.listeners addObject:listener];
}
- (void)addAvailabilityZone:(NSString *)availabilityZone
{
	if (self.availabilityZones == nil)
		[self setAvailabilityZones:[NSMutableArray array]];
	[self.availabilityZones addObject:availabilityZone];
}
- (void)addSubnet:(NSString *)subnet
{
	if (self.subnets == nil)
		[self setSubnets:[NSMutableArray array]];
	[self.subnets addObject:subnet];
}
- (void)addSecurityGroup:(NSString *)securityGroup
{
	if (self.securityGroups == nil)
		[self setSecurityGroups:[NSMutableArray array]];
	[self.securityGroups addObject:securityGroup];
}

#pragma mark - Invocation

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

@end
