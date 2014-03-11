//
//  UAEC2ImportKeyPairRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2ImportKeyPairRequest.h"
#import "UAEC2ImportKeyPairResponse.h"

@interface UAEC2ImportKeyPairRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAEC2ImportKeyPairRequest

@synthesize action=_action, version=_version, dryRun=_dryRun, keyName=_keyName, publicKeyMaterial=_publicKeyMaterial;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"ImportKeyPair"];
		[self setVersion:@"2013-10-15"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAEC2ImportKeyPairResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Request queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"dryRun": @"DryRun",
        @"keyName": @"KeyName",
        @"publicKeyMaterial": @"PublicKeyMaterial"
    }];
    return [keyPaths copy];
}

- (void)setAction:(NSString *)action
{
	_action = action;
	
	if (![self.UA_dirtyProperties containsObject:@"action"])
		[self.UA_dirtyProperties addObject:@"action"];
}

- (void)setVersion:(NSString *)version
{
	_version = version;
	
	if (![self.UA_dirtyProperties containsObject:@"version"])
		[self.UA_dirtyProperties addObject:@"version"];
}

- (void)setDryRun:(BOOL)dryRun
{
	_dryRun = dryRun;
	
	if (![self.UA_dirtyProperties containsObject:@"dryRun"])
		[self.UA_dirtyProperties addObject:@"dryRun"];
}

- (void)setKeyName:(NSString *)keyName
{
	_keyName = keyName;
	
	if (![self.UA_dirtyProperties containsObject:@"keyName"])
		[self.UA_dirtyProperties addObject:@"keyName"];
}

- (void)setPublicKeyMaterial:(NSString *)publicKeyMaterial
{
	_publicKeyMaterial = publicKeyMaterial;
	
	if (![self.UA_dirtyProperties containsObject:@"publicKeyMaterial"])
		[self.UA_dirtyProperties addObject:@"publicKeyMaterial"];
}

+ (NSValueTransformer *)dryRunQueryStringTransformer
{
    return [UAMTLValueTransformer UA_JSONTransformerForBooleanString];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAEC2ImportKeyPairRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAEC2ImportKeyPairRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAEC2ImportKeyPairRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAEC2ImportKeyPairRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
