//
//  UASQSCreateQueueRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UASQSCreateQueueRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UASQSCreateQueueResponse.h"

@interface UASQSCreateQueueRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UASQSCreateQueueRequest

@synthesize action=_action, version=_version, queueName=_queueName, attributes=_attributes;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"CreateQueue"];
		[self setVersion:@"2012-11-05"];
		
		[self UA_addDictionaryKeyValueAdditionalAccessorForSelector:@selector(attributeForName:) propertyName:@"attributes"];
		[self UA_addSetObjectForKeyAdditionalAccessorForSelector:@selector(setAttribute:forName:) propertyName:@"attributes"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UASQSCreateQueueResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UASQSRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"queueName": @"QueueName",
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

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UASQSCreateQueueRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UASQSCreateQueueRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UASQSCreateQueueRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UASQSCreateQueueRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop