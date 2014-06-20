//
//  UAASEnableMetricsCollectionRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASEnableMetricsCollectionRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAASEnableMetricsCollectionResponse.h"

@interface UAASEnableMetricsCollectionRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAASEnableMetricsCollectionRequest

@synthesize action=_action, version=_version, autoScalingGroupName=_autoScalingGroupName, metrics=_metrics, granularity=_granularity;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"EnableMetricsCollection"];
		[self setVersion:@"2011-01-01"];
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(metricAtIndex:) propertyName:@"metrics"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addMetric:) propertyName:@"metrics"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAASEnableMetricsCollectionResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAASRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"autoScalingGroupName": @"AutoScalingGroupName",
        @"metrics": @"Metrics.member",
        @"granularity": @"Granularity"
    }];
    return [keyPaths copy];
}

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAASEnableMetricsCollectionRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAASEnableMetricsCollectionRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAASEnableMetricsCollectionRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAASEnableMetricsCollectionRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop