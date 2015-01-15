//
//  UAASDetachInstancesRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAASDetachInstancesRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAASDetachInstancesResponse.h"

@interface UAASDetachInstancesRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAASDetachInstancesRequest

@synthesize action=_action, version=_version, instanceIDs=_instanceIDs, autoScalingGroupName=_autoScalingGroupName, shouldDecrementDesiredCapacity=_shouldDecrementDesiredCapacity;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"DetachInstances"];
		[self setVersion:@"2011-01-01"];
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(instanceIDAtIndex:) propertyName:@"instanceIDs"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addInstanceID:) propertyName:@"instanceIDs"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAASDetachInstancesResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAASRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"instanceIDs": @"InstanceIds.member",
        @"autoScalingGroupName": @"AutoScalingGroupName",
        @"shouldDecrementDesiredCapacity": @"ShouldDecrementDesiredCapacity"
    }];
    return [keyPaths copy];
}

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAASDetachInstancesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAASDetachInstancesRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAASDetachInstancesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAASDetachInstancesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop