//
//  UASQSAddPermissionRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UASQSAddPermissionRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UASQSAddPermissionResponse.h"

@interface UASQSAddPermissionRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UASQSAddPermissionRequest

@synthesize action=_action, version=_version, queueURL=_queueURL, label=_label, aWSAccountIDs=_aWSAccountIDs, actions=_actions;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"AddPermission"];
		[self setVersion:@"2012-11-05"];
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(aWSAccountIDAtIndex:) propertyName:@"aWSAccountIDs"];
		[self UA_addAtIndexEnumAdditionalAccessorForSelector:@selector(actionAtIndex:) propertyName:@"actions"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addAWSAccountID:) propertyName:@"aWSAccountIDs"];
		[self UA_addAddEnumAdditionalAccessorForSelector:@selector(addAction:) propertyName:@"actions"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UASQSAddPermissionResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UASQSRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"queueURL": @"QueueUrl",
        @"label": @"Label",
        @"aWSAccountIDs": @"AWSAccountId",
        @"actions": @"ActionName"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)actionsQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMArrayTransformerWithValues:@[ @(UASQSActionNameAll), @(UASQSActionNameSendMessage), @(UASQSActionNameReceiveMessage), @(UASQSActionNameDeleteMessage), @(UASQSActionNameChangeMessageVisibility), @(UASQSActionNameGetQueueAttributes), @(UASQSActionNameGetQueueURL) ]
                                                    stringValues:@[ @"*", @"SendMessage", @"ReceiveMessage", @"DeleteMessage", @"ChangeMessageVisibility", @"GetQueueAttributes", @"GetQueueUrl" ]
                                                    unknownValue:@(UASQSActionNameUnknown)];
}

+ (NSValueTransformer *)actionsJSONTransformer
{
    return [NSValueTransformer UA_ENUMArrayTransformerWithValues:@[ @(UASQSActionNameAll), @(UASQSActionNameSendMessage), @(UASQSActionNameReceiveMessage), @(UASQSActionNameDeleteMessage), @(UASQSActionNameChangeMessageVisibility), @(UASQSActionNameGetQueueAttributes), @(UASQSActionNameGetQueueURL) ]
                                                    stringValues:@[ @"*", @"SendMessage", @"ReceiveMessage", @"DeleteMessage", @"ChangeMessageVisibility", @"GetQueueAttributes", @"GetQueueUrl" ]
                                                    unknownValue:@(UASQSActionNameUnknown)];
}

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UASQSAddPermissionRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UASQSAddPermissionRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UASQSAddPermissionRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UASQSAddPermissionRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop