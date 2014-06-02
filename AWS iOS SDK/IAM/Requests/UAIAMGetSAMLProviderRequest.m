//
//  UAIAMGetSAMLProviderRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMGetSAMLProviderRequest.h"
#import "UAIAMGetSAMLProviderResponse.h"

@interface UAIAMGetSAMLProviderRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAIAMGetSAMLProviderRequest

@synthesize action=_action, version=_version, sAMLProviderARN=_sAMLProviderARN;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"GetSAMLProvider"];
		[self setVersion:@"2010-05-08"];
	}
	return self;
}

- (id)initWithSAMLProviderARN:(NSString *)sAMLProviderARN
{
	if (self = [self init])
	{
		[self setSAMLProviderARN:sAMLProviderARN];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAIAMGetSAMLProviderResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAIAMRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"sAMLProviderARN": @"SAMLProviderArn"
    }];
    return [keyPaths copy];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAIAMGetSAMLProviderRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAIAMGetSAMLProviderRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAIAMGetSAMLProviderRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAIAMGetSAMLProviderRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
