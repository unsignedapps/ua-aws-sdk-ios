//
//  UASNSGetPlatformApplicationAttributesRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UASNSGetPlatformApplicationAttributesRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UASNSGetPlatformApplicationAttributesResponse.h"

@interface UASNSGetPlatformApplicationAttributesRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UASNSGetPlatformApplicationAttributesRequest

@synthesize action=_action, version=_version, platformApplicationARN=_platformApplicationARN;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"GetPlatformApplicationAttributes"];
		[self setVersion:@"2010-03-31"];
		
		
	}
	return self;
}

- (id)initWithPlatformApplicationARN:(NSString *)platformApplicationARN
{
	if ((self = [self init]))
	{
		[self setPlatformApplicationARN:platformApplicationARN];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UASNSGetPlatformApplicationAttributesResponse class];
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

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UASNSGetPlatformApplicationAttributesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UASNSGetPlatformApplicationAttributesRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UASNSGetPlatformApplicationAttributesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UASNSGetPlatformApplicationAttributesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop