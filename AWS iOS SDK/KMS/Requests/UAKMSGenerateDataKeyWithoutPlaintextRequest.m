//
//  UAKMSGenerateDataKeyWithoutPlaintextRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAKMSGenerateDataKeyWithoutPlaintextRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAKMSGenerateDataKeyWithoutPlaintextResponse.h"

@interface UAKMSGenerateDataKeyWithoutPlaintextRequest ()

@property (nonatomic, copy) NSString *xAmzTarget;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAKMSGenerateDataKeyWithoutPlaintextRequest

@synthesize xAmzTarget=_xAmzTarget, keyID=_keyID, encryptionContext=_encryptionContext, keySpec=_keySpec, numberOfBytes=_numberOfBytes, grantTokens=_grantTokens;

- (id)init
{
	if (self = [super init])
	{
		[self setXAmzTarget:@"TrentService.GenerateDataKeyWithoutPlaintext"];
		
		[self UA_addDictionaryKeyValueAdditionalAccessorForSelector:@selector(encryptionContextForKey:) propertyName:@"encryptionContext"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(grantTokenAtIndex:) propertyName:@"grantTokens"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addGrantToken:) propertyName:@"grantTokens"];
		[self UA_addSetObjectForKeyAdditionalAccessorForSelector:@selector(setEncryptionContext:forKey:) propertyName:@"encryptionContext"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAKMSGenerateDataKeyWithoutPlaintextResponse class];
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
        @"keySpec": @"KeySpec",
        @"numberOfBytes": @"NumberOfBytes",
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

- (void)invokeWithOwner:(id)owner completionBlock:(UAKMSGenerateDataKeyWithoutPlaintextRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAKMSGenerateDataKeyWithoutPlaintextRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAKMSGenerateDataKeyWithoutPlaintextRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAKMSGenerateDataKeyWithoutPlaintextRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop