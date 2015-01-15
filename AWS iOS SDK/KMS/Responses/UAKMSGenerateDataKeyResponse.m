//
//  UAKMSGenerateDataKeyResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAKMSGenerateDataKeyResponse.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAKMSGenerateDataKeyResponse

@synthesize ciphertextBlob=_ciphertextBlob, plaintext=_plaintext, keyID=_keyID;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addDecodeBase64AdditionalAccessorForSelector:@selector(decodedCiphertextBlob) propertyName:@"ciphertextBlob"];
		[self UA_addEncodeBase64AdditionalAccessorForSelector:@selector(setDecodedCiphertextBlob:) propertyName:@"ciphertextBlob"];
		[self UA_addDecodeBase64AdditionalAccessorForSelector:@selector(decodedPlaintext) propertyName:@"plaintext"];
		[self UA_addEncodeBase64AdditionalAccessorForSelector:@selector(setDecodedPlaintext:) propertyName:@"plaintext"];
	}
	return self;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAKMSResponse JSONKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"ciphertextBlob": @"CiphertextBlob",
        @"decodedCiphertextBlob": [NSNull null],
        @"plaintext": @"Plaintext",
        @"decodedPlaintext": [NSNull null],
        @"keyID": @"KeyId"
    }];
    return [keyPaths copy];
}

@end

#pragma clang diagnostic pop