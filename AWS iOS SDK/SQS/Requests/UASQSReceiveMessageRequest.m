//
//  UASQSReceiveMessageRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UASQSReceiveMessageRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UASQSReceiveMessageResponse.h"

@interface UASQSReceiveMessageRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UASQSReceiveMessageRequest

@synthesize action=_action, version=_version, queueUrl=_queueUrl, attributeNames=_attributeNames, maxNumberOfMessages=_maxNumberOfMessages, visibilityTimeout=_visibilityTimeout, waitTimeSeconds=_waitTimeSeconds;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"ReceiveMessage"];
		[self setVersion:@"2012-11-05"];
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(attributeNameAtIndex:) propertyName:@"attributeNames"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addAttributeName:) propertyName:@"attributeNames"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UASQSReceiveMessageResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UASQSRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"queueUrl": @"QueueUrl",
        @"attributeNames": @"AttributeName",
        @"maxNumberOfMessages": @"MaxNumberOfMessages",
        @"visibilityTimeout": @"VisibilityTimeout",
        @"waitTimeSeconds": @"WaitTimeSeconds"
    }];
    return [keyPaths copy];
}

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UASQSReceiveMessageRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UASQSReceiveMessageRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UASQSReceiveMessageRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UASQSReceiveMessageRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop