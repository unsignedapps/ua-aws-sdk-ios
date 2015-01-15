//
//  UAASDescribeAutoScalingGroupsRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAASDescribeAutoScalingGroupsRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAASDescribeAutoScalingGroupsResponse.h"

@interface UAASDescribeAutoScalingGroupsRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAASDescribeAutoScalingGroupsRequest

@synthesize action=_action, version=_version, autoScalingGroupNames=_autoScalingGroupNames, nextToken=_nextToken, maxRecords=_maxRecords;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"DescribeAutoScalingGroups"];
		[self setVersion:@"2011-01-01"];
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(autoScalingGroupNameAtIndex:) propertyName:@"autoScalingGroupNames"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addAutoScalingGroupName:) propertyName:@"autoScalingGroupNames"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAASDescribeAutoScalingGroupsResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAASRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"autoScalingGroupNames": @"AutoScalingGroupNames.member",
        @"nextToken": @"NextToken",
        @"maxRecords": @"MaxRecords"
    }];
    return [keyPaths copy];
}

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAASDescribeAutoScalingGroupsRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAASDescribeAutoScalingGroupsRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAASDescribeAutoScalingGroupsRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAASDescribeAutoScalingGroupsRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop