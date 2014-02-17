//
//  UAIAMVirtualMFADevice.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMVirtualMFADevice.h"
#import "UAIAMUser.h"

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
        @"serialNumber": @"SerialNumber",
        @"base32StringSeed": @"Base32StringSeed",
        @"qRCodePNG": @"QRCodePNG",
        @"user": @"User",
        @"enableDate": @"EnableDate"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)userQueryStringTransformer
{
  return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[UAIAMUser class]];
}

+ (NSValueTransformer *)enableDateQueryStringTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)userXMLTransformer
{
  return [NSValueTransformer mtl_XMLTransformerWithModelClass:[UAIAMUser class]];
}

+ (NSValueTransformer *)enableDateXMLTransformer
{
    return [NSValueTransformer mtl_XMLTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

@end
