//
//  UAIAMGetLoginProfileRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMGetLoginProfileRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAIAMGetLoginProfileResponse.h"

@interface UAIAMGetLoginProfileRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAIAMGetLoginProfileRequest

@synthesize action=_action, version=_version, userName=_userName;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"GetLoginProfile"];
		[self setVersion:@"2010-05-08"];
		
		
	}
	return self;
}

- (id)initWithUserName:(NSString *)userName
{
	if ((self = [self init]))
	{
		[self setUserName:userName];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAIAMGetLoginProfileResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAIAMRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"userName": @"UserName"
    }];
    return [keyPaths copy];
}

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAIAMGetLoginProfileRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAIAMGetLoginProfileRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAIAMGetLoginProfileRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAIAMGetLoginProfileRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop