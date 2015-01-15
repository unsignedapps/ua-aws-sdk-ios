//
//  UAKMSGenerateDataKeyWithoutPlaintextResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAKMSGenerateDataKeyWithoutPlaintextResponse.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAKMSGenerateDataKeyWithoutPlaintextResponse

@synthesize ciphertextBlob=_ciphertextBlob, keyID=_keyID;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addDecodeBase64AdditionalAccessorForSelector:@selector(decodedCiphertextBlob) propertyName:@"ciphertextBlob"];
		[self UA_addEncodeBase64AdditionalAccessorForSelector:@selector(setDecodedCiphertextBlob:) propertyName:@"ciphertextBlob"];
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
        @"keyID": @"KeyId"
    }];
    return [keyPaths copy];
}

@end

#pragma clang diagnostic pop