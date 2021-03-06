//
//  UAELBConfigureHealthCheckRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBConfigureHealthCheckRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAELBConfigureHealthCheckResponse.h"
#import "UAELBHealthCheck.h"

@interface UAELBConfigureHealthCheckRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAELBConfigureHealthCheckRequest

@synthesize action=_action, version=_version, loadBalancerName=_loadBalancerName, healthCheck=_healthCheck;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"ConfigureHealthCheck"];
		[self setVersion:@"2012-06-01"];
		
		
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAELBConfigureHealthCheckResponse class];
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
        @"healthCheck": @"HealthCheck"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)healthCheckJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONDictionaryTransformerWithModelClass:[UAELBHealthCheck class]];
}

+ (NSValueTransformer *)healthCheckQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UAELBHealthCheck class]];
}

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAELBConfigureHealthCheckRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAELBConfigureHealthCheckRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAELBConfigureHealthCheckRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAELBConfigureHealthCheckRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop