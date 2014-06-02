//
//  UASNSSetTopicAttributesRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UASNSSetTopicAttributesRequest.h"
#import "UASNSSetTopicAttributesResponse.h"

@interface UASNSSetTopicAttributesRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UASNSSetTopicAttributesRequest

@synthesize action=_action, version=_version, topicARN=_topicARN, attributeName=_attributeName, attributeValue=_attributeValue;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"SetTopicAttributes"];
		[self setVersion:@"2010-03-31"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UASNSSetTopicAttributesResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UASNSRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"topicARN": @"TopicArn",
        @"attributeName": @"AttributeName",
        @"attributeValue": @"AttributeValue"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)attributeNameJSONTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UASNSTopicAttributePolicy), @(UASNSTopicAttributeDisplayName), @(UASNSTopicAttributeDeliveryPolicy) ]
                                               stringValues:@[ @"Policy", @"DisplayName", @"DeliveryPolicy" ]
                                               unknownValue:@(UASNSTopicAttributeUnknown)];
}

+ (NSValueTransformer *)attributeNameQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UASNSTopicAttributePolicy), @(UASNSTopicAttributeDisplayName), @(UASNSTopicAttributeDeliveryPolicy) ]
                                               stringValues:@[ @"Policy", @"DisplayName", @"DeliveryPolicy" ]
                                               unknownValue:@(UASNSTopicAttributeUnknown)];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UASNSSetTopicAttributesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UASNSSetTopicAttributesRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UASNSSetTopicAttributesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UASNSSetTopicAttributesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
