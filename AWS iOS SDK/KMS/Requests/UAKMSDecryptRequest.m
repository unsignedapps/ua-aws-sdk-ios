//
//  UAKMSDecryptRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAKMSDecryptRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAKMSDecryptResponse.h"

@interface UAKMSDecryptRequest ()

@property (nonatomic, copy) NSString *xAmzTarget;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAKMSDecryptRequest

@synthesize xAmzTarget=_xAmzTarget, ciphertextBlob=_ciphertextBlob, encryptionContext=_encryptionContext, grantTokens=_grantTokens;

- (id)init
{
	if (self = [super init])
	{
		[self setXAmzTarget:@"TrentService.Decrypt"];
		
		[self UA_addDecodeBase64AdditionalAccessorForSelector:@selector(decodedCiphertextBlob) propertyName:@"ciphertextBlob"];
		[self UA_addEncodeBase64AdditionalAccessorForSelector:@selector(setDecodedCiphertextBlob:) propertyName:@"ciphertextBlob"];
		[self UA_addDictionaryKeyValueAdditionalAccessorForSelector:@selector(encryptionContextForKey:) propertyName:@"encryptionContext"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(grantTokenAtIndex:) propertyName:@"grantTokens"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addGrantToken:) propertyName:@"grantTokens"];
		[self UA_addSetObjectForKeyAdditionalAccessorForSelector:@selector(setEncryptionContext:forKey:) propertyName:@"encryptionContext"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAKMSDecryptResponse class];
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAKMSRequest JSONKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"xAmzTarget": [NSNull null],
        @"ciphertextBlob": @"CiphertextBlob",
        @"decodedCiphertextBlob": [NSNull null],
        @"encryptionContext": @"EncryptionContext",
        @"grantTokens": @"GrantTokens/GrantTokens"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)encryptionContextJSONTransformer
{
    return [UAMTLValueTransformer UA_JSONDictionaryTransformerWithItemTransformer:nil];
}

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAKMSDecryptRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAKMSDecryptRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAKMSDecryptRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAKMSDecryptRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop