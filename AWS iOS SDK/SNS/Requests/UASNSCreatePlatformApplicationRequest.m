//
//  UASNSCreatePlatformApplicationRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UASNSCreatePlatformApplicationRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UASNSCreatePlatformApplicationResponse.h"

@interface UASNSCreatePlatformApplicationRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UASNSCreatePlatformApplicationRequest

@synthesize action=_action, version=_version, name=_name, platform=_platform, attributes=_attributes;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"CreatePlatformApplication"];
		[self setVersion:@"2010-03-31"];
		
		
	}
	return self;
}

- (void)setName:(NSString *)name
{
    [self willChangeValueForKey:@"name"];
    _name = name;
    [self didChangeValueForKey:@"name"];
}

- (Class)UA_ResponseClass
{
	return [UASNSCreatePlatformApplicationResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UASNSRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"name": @"Name",
        @"platform": @"Platform",
        @"attributes": @"Attributes.entry"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)platformJSONTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UASNSPlatformApplicationTypeAdm), @(UASNSPlatformApplicationTypeApns), @(UASNSPlatformApplicationTypeApnsSandbox), @(UASNSPlatformApplicationTypeGcm) ]
                                               stringValues:@[ @"ADM", @"APNS", @"APNS_SANDBOX", @"GCM" ]
                                               unknownValue:@(UASNSPlatformApplicationTypeUnknown)];
}

+ (NSValueTransformer *)attributesJSONTransformer
{
    return [NSValueTransformer UA_JSONKeyValueTransformerWithKeyName:@"key" valueName:@"value"];
}

+ (NSValueTransformer *)platformQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UASNSPlatformApplicationTypeAdm), @(UASNSPlatformApplicationTypeApns), @(UASNSPlatformApplicationTypeApnsSandbox), @(UASNSPlatformApplicationTypeGcm) ]
                                               stringValues:@[ @"ADM", @"APNS", @"APNS_SANDBOX", @"GCM" ]
                                               unknownValue:@(UASNSPlatformApplicationTypeUnknown)];
}

+ (NSValueTransformer *)attributesQueryStringTransformer
{
    return [NSValueTransformer UA_JSONKeyValueTransformerWithKeyName:@"key" valueName:@"value"];
}

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UASNSCreatePlatformApplicationRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UASNSCreatePlatformApplicationRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UASNSCreatePlatformApplicationRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UASNSCreatePlatformApplicationRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop