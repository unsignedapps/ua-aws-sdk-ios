//
//  UASNSCreatePlatformEndpointRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UASNSCreatePlatformEndpointRequest.h"
#import "UASNSCreateEndpointResponse.h"

@interface UASNSCreatePlatformEndpointRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UASNSCreatePlatformEndpointRequest

@synthesize action=_action, version=_version, platformApplicationARN=_platformApplicationARN, token=_token, customUserData=_customUserData, attributes=_attributes;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"CreatePlatformEndpoint"];
		[self setVersion:@"2010-03-31"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UASNSCreateEndpointResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UASNSRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"platformApplicationARN": @"PlatformApplicationArn",
        @"token": @"Token",
        @"customUserData": @"CustomUserData",
        @"attributes": @"Attributes.entry"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)attributesJSONTransformer
{
    return [NSValueTransformer UA_JSONKeyValueTransformerWithKeyName:@"key" valueName:@"value"];
}

+ (NSValueTransformer *)attributesQueryStringTransformer
{
    return [NSValueTransformer UA_JSONKeyValueTransformerWithKeyName:@"key" valueName:@"value"];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UASNSCreatePlatformEndpointRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UASNSCreatePlatformEndpointRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UASNSCreatePlatformEndpointRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UASNSCreatePlatformEndpointRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
