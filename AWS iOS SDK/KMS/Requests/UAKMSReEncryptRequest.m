//
//  UAKMSReEncryptRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAKMSReEncryptRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAKMSReEncryptResponse.h"

@interface UAKMSReEncryptRequest ()

@property (nonatomic, copy) NSString *xAmzTarget;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAKMSReEncryptRequest

@synthesize xAmzTarget=_xAmzTarget, ciphertextBlob=_ciphertextBlob, sourceEncryptionContext=_sourceEncryptionContext, destinationKeyID=_destinationKeyID, destinationEncryptionContext=_destinationEncryptionContext, grantTokens=_grantTokens;

- (id)init
{
	if (self = [super init])
	{
		[self setXAmzTarget:@"TrentService.ReEncrypt"];
		
		[self UA_addDecodeBase64AdditionalAccessorForSelector:@selector(decodedCiphertextBlob) propertyName:@"ciphertextBlob"];
		[self UA_addEncodeBase64AdditionalAccessorForSelector:@selector(setDecodedCiphertextBlob:) propertyName:@"ciphertextBlob"];
		[self UA_addDictionaryKeyValueAdditionalAccessorForSelector:@selector(sourceEncryptionContextForKey:) propertyName:@"sourceEncryptionContext"];
		[self UA_addDictionaryKeyValueAdditionalAccessorForSelector:@selector(destinationEncryptionContextForKey:) propertyName:@"destinationEncryptionContext"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(grantTokenAtIndex:) propertyName:@"grantTokens"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addGrantToken:) propertyName:@"grantTokens"];
		[self UA_addSetObjectForKeyAdditionalAccessorForSelector:@selector(setSourceEncryptionContext:forKey:) propertyName:@"sourceEncryptionContext"];
		[self UA_addSetObjectForKeyAdditionalAccessorForSelector:@selector(setDestinationEncryptionContext:forKey:) propertyName:@"destinationEncryptionContext"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAKMSReEncryptResponse class];
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
        @"sourceEncryptionContext": @"SourceEncryptionContext",
        @"destinationKeyID": @"DestinationKeyId",
        @"destinationEncryptionContext": @"DestinationEncryptionContext",
        @"grantTokens": @"GrantTokens/GrantTokens"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)sourceEncryptionContextJSONTransformer
{
    return [UAMTLValueTransformer UA_JSONDictionaryTransformerWithItemTransformer:nil];
}

+ (NSValueTransformer *)destinationEncryptionContextJSONTransformer
{
    return [UAMTLValueTransformer UA_JSONDictionaryTransformerWithItemTransformer:nil];
}

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAKMSReEncryptRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAKMSReEncryptRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAKMSReEncryptRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAKMSReEncryptRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop