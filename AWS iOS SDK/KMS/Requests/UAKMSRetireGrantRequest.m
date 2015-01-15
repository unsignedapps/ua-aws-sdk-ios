//
//  UAKMSRetireGrantRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAKMSRetireGrantRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAKMSRetireGrantResponse.h"

@interface UAKMSRetireGrantRequest ()

@property (nonatomic, copy) NSString *xAmzTarget;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAKMSRetireGrantRequest

@synthesize xAmzTarget=_xAmzTarget, grantToken=_grantToken;

- (id)init
{
	if (self = [super init])
	{
		[self setXAmzTarget:@"TrentService.RetireGrant"];
		
		
	}
	return self;
}

- (id)initWithGrantToken:(NSString *)grantToken
{
	if ((self = [self init]))
	{
		[self setGrantToken:grantToken];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAKMSRetireGrantResponse class];
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAKMSRequest JSONKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"xAmzTarget": [NSNull null],
        @"grantToken": @"GrantToken"
    }];
    return [keyPaths copy];
}

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAKMSRetireGrantRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAKMSRetireGrantRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAKMSRetireGrantRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAKMSRetireGrantRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop