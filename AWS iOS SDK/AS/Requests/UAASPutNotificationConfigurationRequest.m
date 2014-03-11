//
//  UAASPutNotificationConfigurationRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASPutNotificationConfigurationRequest.h"
#import "UAASPutNotificationConfigurationResponse.h"

@interface UAASPutNotificationConfigurationRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAASPutNotificationConfigurationRequest

@synthesize action=_action, version=_version, autoScalingGroupName=_autoScalingGroupName, topicARN=_topicARN, notificationTypes=_notificationTypes;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"PutNotificationConfiguration"];
		[self setVersion:@"2011-01-01"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAASPutNotificationConfigurationResponse class];
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
        @"topicARN": @"TopicARN",
        @"notificationTypes": @"NotificationTypes.member"
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

- (void)setAutoScalingGroupName:(NSString *)autoScalingGroupName
{
	_autoScalingGroupName = autoScalingGroupName;
	
	if (![self.UA_dirtyProperties containsObject:@"autoScalingGroupName"])
		[self.UA_dirtyProperties addObject:@"autoScalingGroupName"];
}

- (void)setTopicARN:(NSString *)topicARN
{
	_topicARN = topicARN;
	
	if (![self.UA_dirtyProperties containsObject:@"topicARN"])
		[self.UA_dirtyProperties addObject:@"topicARN"];
}

- (void)setNotificationTypes:(NSMutableArray *)notificationTypes
{
	_notificationTypes = notificationTypes;
	
	if (![self.UA_dirtyProperties containsObject:@"notificationTypes"])
		[self.UA_dirtyProperties addObject:@"notificationTypes"];
}

- (void)addNotificationType:(NSString *)notificationType
{
	if (self.notificationTypes == nil)
		[self setNotificationTypes:[NSMutableArray array]];
	[self.notificationTypes addObject:notificationType];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAASPutNotificationConfigurationRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAASPutNotificationConfigurationRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAASPutNotificationConfigurationRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAASPutNotificationConfigurationRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
