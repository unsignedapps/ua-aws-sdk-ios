//
//  UAKMSKeyMetadata.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAKMSKeyMetadata.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAKMSKeyMetadata

@synthesize aWSAccountID=_aWSAccountID, keyID=_keyID, arn=_arn, creationDate=_creationDate, enabled=_enabled, descriptionValue=_descriptionValue, keyUsage=_keyUsage;

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAKMSModel JSONKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"aWSAccountID": @"AWSAccountId",
        @"keyID": @"KeyId",
        @"arn": @"Arn",
        @"creationDate": @"CreationDate",
        @"enabled": @"Enabled",
        @"descriptionValue": @"Description",
        @"keyUsage": @"KeyUsage"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)creationDateJSONTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

@end

#pragma clang diagnostic pop