//
//  UAASSetDesiredCapacityRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASSetDesiredCapacityRequest.h"
#import "UAASSetDesiredCapacityResponse.h"

@interface UAASSetDesiredCapacityRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAASSetDesiredCapacityRequest

@synthesize action=_action, version=_version, autoScalingGroupName=_autoScalingGroupName, desiredCapacity=_desiredCapacity, honorCooldown=_honorCooldown;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"SetDesiredCapacity"];
		[self setVersion:@"2011-01-01"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAASSetDesiredCapacityResponse class];
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
        @"desiredCapacity": @"DesiredCapacity",
        @"honorCooldown": @"HonorCooldown"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)honorCooldownQueryStringTransformer
{
    return [MTLValueTransformer UA_JSONTransformerForBooleanString];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAASSetDesiredCapacityRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAASSetDesiredCapacityRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAASSetDesiredCapacityRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAASSetDesiredCapacityRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
