//
//  UAIAMListUsersRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMListUsersRequest.h"
#import "UAIAMListUsersResponse.h"

@interface UAIAMListUsersRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAIAMListUsersRequest

@synthesize action=_action, version=_version, pathPrefix=_pathPrefix, marker=_marker, maxItems=_maxItems;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"ListUsers"];
		[self setVersion:@"2010-05-08"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAIAMListUsersResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAIAMRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"pathPrefix": @"PathPrefix",
        @"marker": @"Marker",
        @"maxItems": @"MaxItems"
    }];
    return [keyPaths copy];
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

- (void)setPathPrefix:(NSString *)pathPrefix
{
	_pathPrefix = pathPrefix;
	
	if (![self.UA_dirtyProperties containsObject:@"pathPrefix"])
		[self.UA_dirtyProperties addObject:@"pathPrefix"];
}

- (void)setMarker:(NSString *)marker
{
	_marker = marker;
	
	if (![self.UA_dirtyProperties containsObject:@"marker"])
		[self.UA_dirtyProperties addObject:@"marker"];
}

- (void)setMaxItems:(NSNumber *)maxItems
{
	_maxItems = maxItems;
	
	if (![self.UA_dirtyProperties containsObject:@"maxItems"])
		[self.UA_dirtyProperties addObject:@"maxItems"];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAIAMListUsersRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAIAMListUsersRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAIAMListUsersRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAIAMListUsersRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
