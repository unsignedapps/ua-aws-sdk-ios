//
//  UASQSDeleteQueueRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UASQSDeleteQueueRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UASQSDeleteQueueResponse.h"

@interface UASQSDeleteQueueRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UASQSDeleteQueueRequest

@synthesize action=_action, version=_version, queueURL=_queueURL;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"DeleteQueue"];
		[self setVersion:@"2012-11-05"];
		
		
	}
	return self;
}

- (id)initWithQueueURL:(NSString *)queueURL
{
	if ((self = [self init]))
	{
		[self setQueueURL:queueURL];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UASQSDeleteQueueResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UASQSRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"queueURL": @"QueueUrl"
    }];
    return [keyPaths copy];
}

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UASQSDeleteQueueRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UASQSDeleteQueueRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UASQSDeleteQueueRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UASQSDeleteQueueRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop