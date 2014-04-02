//
//  UASNSAddPermissionRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UASNSAddPermissionRequest.h"
#import "UASNSAddPermissionResponse.h"

@interface UASNSAddPermissionRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UASNSAddPermissionRequest

@synthesize action=_action, version=_version, topicARN=_topicARN, label=_label, aWSAccountID=_aWSAccountID, actionName=_actionName;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"AddPermission"];
		[self setVersion:@"2010-03-31"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UASNSAddPermissionResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UASNSRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"topicARN": @"TopicArn",
        @"label": @"Label",
        @"aWSAccountID": @"AWSAccountId.member",
        @"actionName": @"ActionName.member"
    }];
    return [keyPaths copy];
}

- (NSString *)aWSAccountIDAtIndex:(NSUInteger)index
{
    if (self.aWSAccountID == nil || index >= ([self.aWSAccountID count]-1))
        return nil;

    return [self.aWSAccountID objectAtIndex:index];
}

- (NSString *)actionNameAtIndex:(NSUInteger)index
{
    if (self.actionName == nil || index >= ([self.actionName count]-1))
        return nil;

    return [self.actionName objectAtIndex:index];
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

- (void)setTopicARN:(NSString *)topicARN
{
	_topicARN = topicARN;
	
	if (![self.UA_dirtyProperties containsObject:@"topicARN"])
		[self.UA_dirtyProperties addObject:@"topicARN"];
}

- (void)setLabel:(NSString *)label
{
	_label = label;
	
	if (![self.UA_dirtyProperties containsObject:@"label"])
		[self.UA_dirtyProperties addObject:@"label"];
}

- (void)setAWSAccountID:(NSMutableArray *)aWSAccountID
{
	_aWSAccountID = aWSAccountID;
	
	if (![self.UA_dirtyProperties containsObject:@"aWSAccountID"])
		[self.UA_dirtyProperties addObject:@"aWSAccountID"];
}

- (void)setActionName:(NSMutableArray *)actionName
{
	_actionName = actionName;
	
	if (![self.UA_dirtyProperties containsObject:@"actionName"])
		[self.UA_dirtyProperties addObject:@"actionName"];
}

- (void)addAWSAccountID:(NSString *)aWSAccountID
{
	if (self.aWSAccountID == nil)
		[self setAWSAccountID:[NSMutableArray array]];
	[self.aWSAccountID addObject:aWSAccountID];
}

- (void)addActionName:(NSString *)actionName
{
	if (self.actionName == nil)
		[self setActionName:[NSMutableArray array]];
	[self.actionName addObject:actionName];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UASNSAddPermissionRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UASNSAddPermissionRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UASNSAddPermissionRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UASNSAddPermissionRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
