//
//  UAKMSGenerateDataKeyRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAKMSGenerateDataKeyRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAKMSGenerateDataKeyResponse.h"

@interface UAKMSGenerateDataKeyRequest ()

@property (nonatomic, copy) NSString *xAmzTarget;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAKMSGenerateDataKeyRequest

@synthesize xAmzTarget=_xAmzTarget, keyID=_keyID, encryptionContext=_encryptionContext, numberOfBytes=_numberOfBytes, keySpec=_keySpec, grantTokens=_grantTokens;

- (id)init
{
	if (self = [super init])
	{
		[self setXAmzTarget:@"TrentService.GenerateDataKey"];
		
		[self UA_addDictionaryKeyValueAdditionalAccessorForSelector:@selector(encryptionContextForKey:) propertyName:@"encryptionContext"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(grantTokenAtIndex:) propertyName:@"grantTokens"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addGrantToken:) propertyName:@"grantTokens"];
		[self UA_addSetObjectForKeyAdditionalAccessorForSelector:@selector(setEncryptionContext:forKey:) propertyName:@"encryptionContext"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAKMSGenerateDataKeyResponse class];
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAKMSRequest JSONKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"xAmzTarget": [NSNull null],
        @"keyID": @"KeyId",
        @"encryptionContext": @"EncryptionContext",
        @"numberOfBytes": @"NumberOfBytes",
        @"keySpec": @"KeySpec",
        @"grantTokens": @"GrantTokens/GrantTokens"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)encryptionContextJSONTransformer
{
    return [UAMTLValueTransformer UA_JSONDictionaryTransformerWithItemTransformer:nil];
}

+ (NSValueTransformer *)keySpecJSONTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAKMSKeySpecAES256), @(UAKMSKeySpecAES128) ]
                                               stringValues:@[ @"AES_256", @"AES_128" ]
                                               unknownValue:@(UAKMSKeySpecUnknown)];
}

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAKMSGenerateDataKeyRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAKMSGenerateDataKeyRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAKMSGenerateDataKeyRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAKMSGenerateDataKeyRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop