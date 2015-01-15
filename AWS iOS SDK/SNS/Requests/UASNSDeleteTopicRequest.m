//
//  UASNSDeleteTopicRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UASNSDeleteTopicRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UASNSDeleteTopicResponse.h"

@interface UASNSDeleteTopicRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UASNSDeleteTopicRequest

@synthesize action=_action, version=_version, topicARN=_topicARN;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"DeleteTopic"];
		[self setVersion:@"2010-03-31"];
		
		
	}
	return self;
}

- (id)initWithTopicARN:(NSString *)topicARN
{
	if ((self = [self init]))
	{
		[self setTopicARN:topicARN];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UASNSDeleteTopicResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UASNSRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"topicARN": @"TopicArn"
    }];
    return [keyPaths copy];
}

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UASNSDeleteTopicRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UASNSDeleteTopicRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UASNSDeleteTopicRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UASNSDeleteTopicRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop