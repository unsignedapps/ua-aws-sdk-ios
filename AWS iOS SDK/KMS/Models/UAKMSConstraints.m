//
//  UAKMSConstraints.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAKMSConstraints.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAKMSConstraints

@synthesize encryptionContextSubset=_encryptionContextSubset, encryptionContextEquals=_encryptionContextEquals;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addDictionaryKeyValueAdditionalAccessorForSelector:@selector(encryptionContextSubsetForKey:) propertyName:@"encryptionContextSubset"];
		[self UA_addDictionaryKeyValueAdditionalAccessorForSelector:@selector(encryptionContextEqualsForKey:) propertyName:@"encryptionContextEquals"];
	}
	return self;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAKMSModel JSONKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"encryptionContextSubset": @"EncryptionContextSubset",
        @"encryptionContextEquals": @"EncryptionContextEquals"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)encryptionContextSubsetJSONTransformer
{
    return [UAMTLValueTransformer UA_JSONDictionaryTransformerWithItemTransformer:nil];
}

+ (NSValueTransformer *)encryptionContextEqualsJSONTransformer
{
    return [UAMTLValueTransformer UA_JSONDictionaryTransformerWithItemTransformer:nil];
}

@end

#pragma clang diagnostic pop