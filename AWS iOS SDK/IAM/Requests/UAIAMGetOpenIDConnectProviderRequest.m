//
//  UAIAMGetOpenIDConnectProviderRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMGetOpenIDConnectProviderRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAIAMGetOpenIDConnectProviderResponse.h"

@interface UAIAMGetOpenIDConnectProviderRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAIAMGetOpenIDConnectProviderRequest

@synthesize action=_action, version=_version, openIDConnectProviderARN=_openIDConnectProviderARN;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"GetOpenIDConnectProvider"];
		[self setVersion:@"2010-05-08"];
		
		
	}
	return self;
}

- (id)initWithOpenIDConnectProviderARN:(NSString *)openIDConnectProviderARN
{
	if ((self = [self init]))
	{
		[self setOpenIDConnectProviderARN:openIDConnectProviderARN];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAIAMGetOpenIDConnectProviderResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAIAMRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"openIDConnectProviderARN": @"OpenIDConnectProviderArn"
    }];
    return [keyPaths copy];
}

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAIAMGetOpenIDConnectProviderRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAIAMGetOpenIDConnectProviderRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAIAMGetOpenIDConnectProviderRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAIAMGetOpenIDConnectProviderRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop