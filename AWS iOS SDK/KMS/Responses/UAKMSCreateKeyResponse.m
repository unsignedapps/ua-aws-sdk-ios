//
//  UAKMSCreateKeyResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAKMSCreateKeyResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAKMSKeyMetadata.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAKMSCreateKeyResponse

@synthesize keyMetadata=_keyMetadata;

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAKMSResponse JSONKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"keyMetadata": @"KeyMetadata"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)keyMetadataJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONDictionaryTransformerWithModelClass:[UAKMSKeyMetadata class]];
}

@end

#pragma clang diagnostic pop