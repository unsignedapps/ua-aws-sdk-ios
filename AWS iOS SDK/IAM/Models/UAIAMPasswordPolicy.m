//
//  UAIAMPasswordPolicy.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMPasswordPolicy.h"

@implementation UAIAMPasswordPolicy

@synthesize minimumPasswordLength=_minimumPasswordLength, requireSymbols=_requireSymbols, requireNumbers=_requireNumbers, requireUppercaseCharacters=_requireUppercaseCharacters, requireLowercaseCharacters=_requireLowercaseCharacters, allowUsersToChangePassword=_allowUsersToChangePassword, expirePasswords=_expirePasswords, maxPasswordAge=_maxPasswordAge;

+ (NSString *)XPathPrefix
{
    return @"./";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAIAMModel XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"minimumPasswordLength": @"MinimumPasswordLength",
        @"requireSymbols": @"RequireSymbols",
        @"requireNumbers": @"RequireNumbers",
        @"requireUppercaseCharacters": @"RequireUppercaseCharacters",
        @"requireLowercaseCharacters": @"RequireLowercaseCharacters",
        @"allowUsersToChangePassword": @"AllowUsersToChangePassword",
        @"expirePasswords": @"ExpirePasswords",
        @"maxPasswordAge": @"MaxPasswordAge"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)minimumPasswordLengthXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)requireSymbolsXMLTransformer
{
    return [MTLValueTransformer UA_XMLTransformerForBooleanString];
}

+ (NSValueTransformer *)requireNumbersXMLTransformer
{
    return [MTLValueTransformer UA_XMLTransformerForBooleanString];
}

+ (NSValueTransformer *)requireUppercaseCharactersXMLTransformer
{
    return [MTLValueTransformer UA_XMLTransformerForBooleanString];
}

+ (NSValueTransformer *)requireLowercaseCharactersXMLTransformer
{
    return [MTLValueTransformer UA_XMLTransformerForBooleanString];
}

+ (NSValueTransformer *)allowUsersToChangePasswordXMLTransformer
{
    return [MTLValueTransformer UA_XMLTransformerForBooleanString];
}

+ (NSValueTransformer *)expirePasswordsXMLTransformer
{
    return [MTLValueTransformer UA_XMLTransformerForBooleanString];
}

+ (NSValueTransformer *)maxPasswordAgeXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

@end
