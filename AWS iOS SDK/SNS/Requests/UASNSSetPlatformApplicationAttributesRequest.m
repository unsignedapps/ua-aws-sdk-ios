//
//  UASNSSetPlatformApplicationAttributesRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UASNSSetPlatformApplicationAttributesRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UASNSSetPlatformApplicationAttributesResponse.h"

@interface UASNSSetPlatformApplicationAttributesRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UASNSSetPlatformApplicationAttributesRequest

@synthesize action=_action, version=_version, platformApplicationARN=_platformApplicationARN, attributes=_attributes;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"SetPlatformApplicationAttributes"];
		[self setVersion:@"2010-03-31"];
		
		[self UA_addDictionaryKeyValueAdditionalAccessorForSelector:@selector(attributeForKey:) propertyName:@"attributes"];
		[self UA_addSetObjectForKeyAdditionalAccessorForSelector:@selector(setAttribute:forKey:) propertyName:@"attributes"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UASNSSetPlatformApplicationAttributesResponse class];
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

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UASNSSetPlatformApplicationAttributesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UASNSSetPlatformApplicationAttributesRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UASNSSetPlatformApplicationAttributesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UASNSSetPlatformApplicationAttributesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop