//
//  UAEC2RequestSpotInstancesRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2RequestSpotInstancesRequest.h"
#import "UAEC2RequestSpotInstancesResponse.h"
#import "UAEC2LaunchSpecification.h"

@interface UAEC2RequestSpotInstancesRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAEC2RequestSpotInstancesRequest

@synthesize action=_action, version=_version, dryRun=_dryRun, spotPrice=_spotPrice, instanceCount=_instanceCount, type=_type, validFrom=_validFrom, validUntil=_validUntil, launchGroup=_launchGroup, availabilityZoneGroup=_availabilityZoneGroup, launchSpecification=_launchSpecification;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"RequestSpotInstances"];
		[self setVersion:@"2014-02-01"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAEC2RequestSpotInstancesResponse class];
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
        @"spotPrice": @"SpotPrice",
        @"instanceCount": @"InstanceCount",
        @"type": @"Type",
        @"validFrom": @"ValidFrom",
        @"validUntil": @"ValidUntil",
        @"launchGroup": @"LaunchGroup",
        @"availabilityZoneGroup": @"AvailabilityZoneGroup",
        @"launchSpecification": @"LaunchSpecification"
    }];
    return [keyPaths copy];
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

- (void)setDryRun:(BOOL)dryRun
{
	_dryRun = dryRun;
	
	if (![self.UA_dirtyProperties containsObject:@"dryRun"])
		[self.UA_dirtyProperties addObject:@"dryRun"];
}

- (void)setSpotPrice:(NSString *)spotPrice
{
	_spotPrice = spotPrice;
	
	if (![self.UA_dirtyProperties containsObject:@"spotPrice"])
		[self.UA_dirtyProperties addObject:@"spotPrice"];
}

- (void)setInstanceCount:(NSNumber *)instanceCount
{
	_instanceCount = instanceCount;
	
	if (![self.UA_dirtyProperties containsObject:@"instanceCount"])
		[self.UA_dirtyProperties addObject:@"instanceCount"];
}

- (void)setType:(NSString *)type
{
	_type = type;
	
	if (![self.UA_dirtyProperties containsObject:@"type"])
		[self.UA_dirtyProperties addObject:@"type"];
}

- (void)setValidFrom:(NSDate *)validFrom
{
	_validFrom = validFrom;
	
	if (![self.UA_dirtyProperties containsObject:@"validFrom"])
		[self.UA_dirtyProperties addObject:@"validFrom"];
}

- (void)setValidUntil:(NSDate *)validUntil
{
	_validUntil = validUntil;
	
	if (![self.UA_dirtyProperties containsObject:@"validUntil"])
		[self.UA_dirtyProperties addObject:@"validUntil"];
}

- (void)setLaunchGroup:(NSString *)launchGroup
{
	_launchGroup = launchGroup;
	
	if (![self.UA_dirtyProperties containsObject:@"launchGroup"])
		[self.UA_dirtyProperties addObject:@"launchGroup"];
}

- (void)setAvailabilityZoneGroup:(NSString *)availabilityZoneGroup
{
	_availabilityZoneGroup = availabilityZoneGroup;
	
	if (![self.UA_dirtyProperties containsObject:@"availabilityZoneGroup"])
		[self.UA_dirtyProperties addObject:@"availabilityZoneGroup"];
}

- (void)setLaunchSpecification:(UAEC2LaunchSpecification *)launchSpecification
{
	_launchSpecification = launchSpecification;
	
	if (![self.UA_dirtyProperties containsObject:@"launchSpecification"])
		[self.UA_dirtyProperties addObject:@"launchSpecification"];
}

+ (NSValueTransformer *)validFromJSONTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)validUntilJSONTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)launchSpecificationJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONDictionaryTransformerWithModelClass:[UAEC2LaunchSpecification class]];
}

+ (NSValueTransformer *)dryRunQueryStringTransformer
{
    return [UAMTLValueTransformer UA_JSONTransformerForBooleanString];
}

+ (NSValueTransformer *)validFromQueryStringTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)validUntilQueryStringTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)launchSpecificationQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UAEC2LaunchSpecification class]];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAEC2RequestSpotInstancesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAEC2RequestSpotInstancesRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAEC2RequestSpotInstancesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAEC2RequestSpotInstancesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
