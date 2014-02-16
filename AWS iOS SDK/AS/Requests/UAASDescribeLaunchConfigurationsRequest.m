//
//  UAASDescribeLaunchConfigurationsRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASDescribeLaunchConfigurationsRequest.h"
#import "UAASDescribeLaunchConfigurationsResponse.h"

@interface UAASDescribeLaunchConfigurationsRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAASDescribeLaunchConfigurationsRequest

@synthesize action=_action, version=_version, launchConfigurationNames=_launchConfigurationNames, nextToken=_nextToken, maxRecords=_maxRecords;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"DescribeLaunchConfigurations"];
		[self setVersion:@"2011-01-01"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAASDescribeLaunchConfigurationsResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAASRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"launchConfigurationNames": @"LaunchConfigurationNames.member",
        @"nextToken": @"NextToken",
        @"maxRecords": @"MaxRecords"
    }];
    return [keyPaths copy];
}

- (void)addLaunchConfigurationName:(NSString *)launchConfigurationName
{
	if (self.launchConfigurationNames == nil)
		[self setLaunchConfigurationNames:[NSMutableArray array]];
	[self.launchConfigurationNames addObject:launchConfigurationName];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAASDescribeLaunchConfigurationsRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAASDescribeLaunchConfigurationsRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAASDescribeLaunchConfigurationsRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAASDescribeLaunchConfigurationsRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
