//
//  UAKMSDeleteAliasRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAKMSDeleteAliasRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAKMSDeleteAliasResponse.h"

@interface UAKMSDeleteAliasRequest ()

@property (nonatomic, copy) NSString *xAmzTarget;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAKMSDeleteAliasRequest

@synthesize xAmzTarget=_xAmzTarget, aliasName=_aliasName;

- (id)init
{
	if (self = [super init])
	{
		[self setXAmzTarget:@"TrentService.DeleteAlias"];
		
		
	}
	return self;
}

- (id)initWithAliasName:(NSString *)aliasName
{
	if ((self = [self init]))
	{
		[self setAliasName:aliasName];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAKMSDeleteAliasResponse class];
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAKMSRequest JSONKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"xAmzTarget": [NSNull null],
        @"aliasName": @"AliasName"
    }];
    return [keyPaths copy];
}

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAKMSDeleteAliasRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAKMSDeleteAliasRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAKMSDeleteAliasRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAKMSDeleteAliasRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop