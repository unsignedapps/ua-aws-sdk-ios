//
//  UAEC2RequestSpotInstancesRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2RequestSpotInstancesRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2RequestSpotInstancesResponse.h"
#import "UAEC2LaunchSpecificationSpecification.h"

@interface UAEC2RequestSpotInstancesRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2RequestSpotInstancesRequest

@synthesize action=_action, version=_version, dryRun=_dryRun, spotPrice=_spotPrice, instanceCount=_instanceCount, type=_type, validFrom=_validFrom, validUntil=_validUntil, launchGroup=_launchGroup, availabilityZoneGroup=_availabilityZoneGroup, launchSpecification=_launchSpecification;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"RequestSpotInstances"];
		[self setVersion:@"2014-05-01"];
		
		
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

+ (NSValueTransformer *)typeJSONTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2SpotInstanceRequestTypeOneTime), @(UAEC2SpotInstanceRequestTypePersistent) ]
                                               stringValues:@[ @"one-time", @"persistent" ]
                                               unknownValue:@(UAEC2SpotInstanceRequestTypeUnknown)];
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
  return [NSValueTransformer UAMTL_JSONDictionaryTransformerWithModelClass:[UAEC2LaunchSpecificationSpecification class]];
}

+ (NSValueTransformer *)dryRunQueryStringTransformer
{
    return [UAMTLValueTransformer UA_JSONTransformerForBooleanString];
}

+ (NSValueTransformer *)typeQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2SpotInstanceRequestTypeOneTime), @(UAEC2SpotInstanceRequestTypePersistent) ]
                                               stringValues:@[ @"one-time", @"persistent" ]
                                               unknownValue:@(UAEC2SpotInstanceRequestTypeUnknown)];
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
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UAEC2LaunchSpecificationSpecification class]];
}

/*#pragma mark - Invocation

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
*/
@end

#pragma clang diagnostic pop