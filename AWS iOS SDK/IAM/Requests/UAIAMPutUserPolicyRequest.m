//
//  UAIAMPutUserPolicyRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMPutUserPolicyRequest.h"
#import "UAIAMPutUserPolicyResponse.h"

@interface UAIAMPutUserPolicyRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAIAMPutUserPolicyRequest

@synthesize action=_action, version=_version, userName=_userName, policyName=_policyName, policyDocument=_policyDocument;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"PutUserPolicy"];
		[self setVersion:@"2010-05-08"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAIAMPutUserPolicyResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAIAMRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"userName": @"UserName",
        @"policyName": @"PolicyName",
        @"policyDocument": @"PolicyDocument"
    }];
    return [keyPaths copy];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAIAMPutUserPolicyRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAIAMPutUserPolicyRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAIAMPutUserPolicyRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAIAMPutUserPolicyRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
