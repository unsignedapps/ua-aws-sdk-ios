//
//  UASNSDeletePlatformApplicationRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UASNSDeletePlatformApplicationRequest.h"
#import "UASNSDeletePlatformApplicationResponse.h"

@interface UASNSDeletePlatformApplicationRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UASNSDeletePlatformApplicationRequest

@synthesize action=_action, version=_version, platformApplicationARN=_platformApplicationARN;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"DeletePlatformApplication"];
		[self setVersion:@"2010-03-31"];
	}
	return self;
}

- (id)initWithPlatformApplicationARN:(NSString *)platformApplicationARN
{
	if (self = [self init])
	{
		[self setPlatformApplicationARN:platformApplicationARN];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UASNSDeletePlatformApplicationResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UASNSRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"platformApplicationARN": @"PlatformApplicationArn"
    }];
    return [keyPaths copy];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UASNSDeletePlatformApplicationRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UASNSDeletePlatformApplicationRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UASNSDeletePlatformApplicationRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UASNSDeletePlatformApplicationRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
