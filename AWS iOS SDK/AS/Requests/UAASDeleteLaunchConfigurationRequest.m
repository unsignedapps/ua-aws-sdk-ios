//
//  UAASDeleteLaunchConfigurationRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASDeleteLaunchConfigurationRequest.h"
#import "UAASDeleteLaunchConfigurationResponse.h"

@interface UAASDeleteLaunchConfigurationRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAASDeleteLaunchConfigurationRequest

@synthesize action=_action, version=_version, launchConfigurationName=_launchConfigurationName;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"DeleteLaunchConfiguration"];
		[self setVersion:@"2011-01-01"];
	}
	return self;
}

- (id)initWithLaunchConfigurationName:(NSString *)launchConfigurationName
{
	if (self = [self init])
	{
		[self setLaunchConfigurationName:launchConfigurationName];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAASDeleteLaunchConfigurationResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAASRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"launchConfigurationName": @"LaunchConfigurationName"
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

- (void)setLaunchConfigurationName:(NSString *)launchConfigurationName
{
	_launchConfigurationName = launchConfigurationName;
	
	if (![self.UA_dirtyProperties containsObject:@"launchConfigurationName"])
		[self.UA_dirtyProperties addObject:@"launchConfigurationName"];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAASDeleteLaunchConfigurationRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAASDeleteLaunchConfigurationRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAASDeleteLaunchConfigurationRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAASDeleteLaunchConfigurationRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
