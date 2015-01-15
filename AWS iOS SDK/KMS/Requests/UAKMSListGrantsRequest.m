//
//  UAKMSListGrantsRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAKMSListGrantsRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAKMSListGrantsResponse.h"

@interface UAKMSListGrantsRequest ()

@property (nonatomic, copy) NSString *xAmzTarget;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAKMSListGrantsRequest

@synthesize xAmzTarget=_xAmzTarget, keyID=_keyID, limit=_limit, marker=_marker;

- (id)init
{
	if (self = [super init])
	{
		[self setXAmzTarget:@"TrentService.ListGrants"];
		
		
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAKMSListGrantsResponse class];
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAKMSRequest JSONKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"xAmzTarget": [NSNull null],
        @"keyID": @"KeyId",
        @"limit": @"Limit",
        @"marker": @"Marker"
    }];
    return [keyPaths copy];
}

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAKMSListGrantsRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAKMSListGrantsRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAKMSListGrantsRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAKMSListGrantsRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop