//
//  UAIAMAccessKeyMetadata.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMAccessKeyMetadata.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAIAMAccessKeyMetadata

@synthesize userName=_userName, accessKeyID=_accessKeyID, status=_status, createDate=_createDate;

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
        @"userName": @"iam:UserName",
        @"accessKeyID": @"iam:AccessKeyId",
        @"status": @"iam:Status",
        @"createDate": @"iam:CreateDate"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)statusQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAIAMAccessKeyStatusActive), @(UAIAMAccessKeyStatusInactive) ]
                                               stringValues:@[ @"Active", @"Inactive" ]
                                               unknownValue:@(UAIAMAccessKeyStatusUnknown)];
}

+ (NSValueTransformer *)createDateQueryStringTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)statusXMLTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAIAMAccessKeyStatusActive), @(UAIAMAccessKeyStatusInactive) ]
                                               stringValues:@[ @"Active", @"Inactive" ]
                                               unknownValue:@(UAIAMAccessKeyStatusUnknown)];
}

+ (NSValueTransformer *)createDateXMLTransformer
{
    return [NSValueTransformer UAMTL_XMLTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

@end

#pragma clang diagnostic pop