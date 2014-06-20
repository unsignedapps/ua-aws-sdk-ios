//
//  UAIAMVirtualMFADevice.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMVirtualMFADevice.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAIAMUser.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAIAMVirtualMFADevice

@synthesize serialNumber=_serialNumber, base32StringSeed=_base32StringSeed, qRCodePNG=_qRCodePNG, user=_user, enableDate=_enableDate;

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
        @"serialNumber": @"iam:SerialNumber",
        @"base32StringSeed": @"iam:Base32StringSeed",
        @"qRCodePNG": @"iam:QRCodePNG",
        @"user": @"iam:User",
        @"enableDate": @"iam:EnableDate"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)userQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UAIAMUser class]];
}

+ (NSValueTransformer *)enableDateQueryStringTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)userXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UAIAMUser class]];
}

+ (NSValueTransformer *)enableDateXMLTransformer
{
    return [NSValueTransformer UAMTL_XMLTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

@end

#pragma clang diagnostic pop