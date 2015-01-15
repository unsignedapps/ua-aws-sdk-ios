//
//  UAIAMGetInstanceProfileRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMGetInstanceProfileRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAIAMGetInstanceProfileResponse.h"

@interface UAIAMGetInstanceProfileRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAIAMGetInstanceProfileRequest

@synthesize action=_action, version=_version, instanceProfileName=_instanceProfileName;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"GetInstanceProfile"];
		[self setVersion:@"2010-05-08"];
		
		
	}
	return self;
}

- (id)initWithInstanceProfileName:(NSString *)instanceProfileName
{
	if ((self = [self init]))
	{
		[self setInstanceProfileName:instanceProfileName];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAIAMGetInstanceProfileResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAIAMRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"instanceProfileName": @"InstanceProfileName"
    }];
    return [keyPaths copy];
}

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAIAMGetInstanceProfileRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAIAMGetInstanceProfileRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAIAMGetInstanceProfileRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAIAMGetInstanceProfileRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop