//
//  UASQSSetQueueAttributesRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UASQSSetQueueAttributesRequest.h"
#import "UASQSSetQueueAttributesResponse.h"

@interface UASQSSetQueueAttributesRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UASQSSetQueueAttributesRequest

@synthesize action=_action, version=_version, queueUrl=_queueUrl, attributes=_attributes;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"SetQueueAttributes"];
		[self setVersion:@"2012-11-05"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UASQSSetQueueAttributesResponse class];
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
        @"attributes": @"Attribute.entry"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)attributesJSONTransformer
{
    return [NSValueTransformer UA_JSONKeyValueTransformerWithKeyName:@"Name" valueName:@"Value"];
}

+ (NSValueTransformer *)attributesQueryStringTransformer
{
    return [NSValueTransformer UA_JSONKeyValueTransformerWithKeyName:@"Name" valueName:@"Value"];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UASQSSetQueueAttributesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UASQSSetQueueAttributesRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UASQSSetQueueAttributesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UASQSSetQueueAttributesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
