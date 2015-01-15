//
//  UAIAMUpdateSAMLProviderRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMUpdateSAMLProviderRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAIAMUpdateSAMLProviderResponse.h"

@interface UAIAMUpdateSAMLProviderRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAIAMUpdateSAMLProviderRequest

@synthesize action=_action, version=_version, sAMLMetadataDocument=_sAMLMetadataDocument, sAMLProviderARN=_sAMLProviderARN;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"UpdateSAMLProvider"];
		[self setVersion:@"2010-05-08"];
		
		
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAIAMUpdateSAMLProviderResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAIAMRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"sAMLMetadataDocument": @"SAMLMetadataDocument",
        @"sAMLProviderARN": @"SAMLProviderArn"
    }];
    return [keyPaths copy];
}

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAIAMUpdateSAMLProviderRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAIAMUpdateSAMLProviderRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAIAMUpdateSAMLProviderRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAIAMUpdateSAMLProviderRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop