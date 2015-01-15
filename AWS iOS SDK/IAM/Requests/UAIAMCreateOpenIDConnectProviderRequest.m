//
//  UAIAMCreateOpenIDConnectProviderRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMCreateOpenIDConnectProviderRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAIAMCreateOpenIDConnectProviderResponse.h"

@interface UAIAMCreateOpenIDConnectProviderRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAIAMCreateOpenIDConnectProviderRequest

@synthesize action=_action, version=_version, url=_url, clientIDList=_clientIDList, thumbprintList=_thumbprintList;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"CreateOpenIDConnectProvider"];
		[self setVersion:@"2010-05-08"];
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(clientIDListAtIndex:) propertyName:@"clientIDList"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(thumbprintListAtIndex:) propertyName:@"thumbprintList"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addClientIDList:) propertyName:@"clientIDList"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addThumbprintList:) propertyName:@"thumbprintList"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAIAMCreateOpenIDConnectProviderResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAIAMRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"url": @"Url",
        @"clientIDList": @"ClientIDList.member",
        @"thumbprintList": @"ThumbprintList.member"
    }];
    return [keyPaths copy];
}

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAIAMCreateOpenIDConnectProviderRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAIAMCreateOpenIDConnectProviderRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAIAMCreateOpenIDConnectProviderRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAIAMCreateOpenIDConnectProviderRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop