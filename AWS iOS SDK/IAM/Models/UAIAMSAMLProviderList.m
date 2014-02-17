//
//  UAIAMSAMLProviderList.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMSAMLProviderList.h"

@implementation UAIAMSAMLProviderList

@synthesize arn=_arn, validUntil=_validUntil, createDate=_createDate;

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
        @"arn": @"Arn",
        @"validUntil": @"ValidUntil",
        @"createDate": @"CreateDate"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)createDateQueryStringTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)createDateXMLTransformer
{
    return [NSValueTransformer mtl_XMLTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

@end