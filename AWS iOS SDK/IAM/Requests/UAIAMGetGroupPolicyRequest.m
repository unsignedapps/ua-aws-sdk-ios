//
//  UAIAMGetGroupPolicyRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMGetGroupPolicyRequest.h"
#import "UAIAMGetGroupPolicyResponse.h"

@interface UAIAMGetGroupPolicyRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAIAMGetGroupPolicyRequest

@synthesize action=_action, version=_version, groupName=_groupName, policyName=_policyName;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"GetGroupPolicy"];
		[self setVersion:@"2010-05-08"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAIAMGetGroupPolicyResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAIAMRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"groupName": @"GroupName",
        @"policyName": @"PolicyName"
    }];
    return [keyPaths copy];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAIAMGetGroupPolicyRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAIAMGetGroupPolicyRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAIAMGetGroupPolicyRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAIAMGetGroupPolicyRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
