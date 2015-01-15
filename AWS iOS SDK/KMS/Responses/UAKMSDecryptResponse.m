//
//  UAKMSDecryptResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAKMSDecryptResponse.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAKMSDecryptResponse

@synthesize keyID=_keyID, plaintext=_plaintext;

- (id)init
{
	if (self = [super init])
	{
		
		
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
        @"keyID": @"KeyId",
        @"plaintext": @"Plaintext",
        @"decodedPlaintext": [NSNull null]
    }];
    return [keyPaths copy];
}

@end

#pragma clang diagnostic pop