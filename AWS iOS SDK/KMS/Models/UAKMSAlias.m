//
//  UAKMSAlias.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAKMSAlias.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAKMSAlias

@synthesize aliasName=_aliasName, aliasARN=_aliasARN, targetKeyID=_targetKeyID;

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAKMSModel JSONKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"aliasName": @"AliasName",
        @"aliasARN": @"AliasArn",
        @"targetKeyID": @"TargetKeyId"
    }];
    return [keyPaths copy];
}

@end

#pragma clang diagnostic pop