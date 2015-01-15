//
//  UAIAMUpdateOpenIDConnectProviderThumbprintRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMUpdateOpenIDConnectProviderThumbprintRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAIAMUpdateOpenIDConnectProviderThumbprintResponse.h"

@interface UAIAMUpdateOpenIDConnectProviderThumbprintRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAIAMUpdateOpenIDConnectProviderThumbprintRequest

@synthesize action=_action, version=_version, openIDConnectProviderARN=_openIDConnectProviderARN, thumbprintList=_thumbprintList;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"UpdateOpenIDConnectProviderThumbprint"];
		[self setVersion:@"2010-05-08"];
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(thumbprintListAtIndex:) propertyName:@"thumbprintList"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addThumbprintList:) propertyName:@"thumbprintList"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAIAMUpdateOpenIDConnectProviderThumbprintResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAIAMRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"openIDConnectProviderARN": @"OpenIDConnectProviderArn",
        @"thumbprintList": @"ThumbprintList.member"
    }];
    return [keyPaths copy];
}

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAIAMUpdateOpenIDConnectProviderThumbprintRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAIAMUpdateOpenIDConnectProviderThumbprintRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAIAMUpdateOpenIDConnectProviderThumbprintRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAIAMUpdateOpenIDConnectProviderThumbprintRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop