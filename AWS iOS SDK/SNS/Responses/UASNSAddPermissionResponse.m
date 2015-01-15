//
//  UASNSAddPermissionResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UASNSAddPermissionResponse.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UASNSAddPermissionResponse

@synthesize requestID=_requestID;

+ (NSString *)XPathPrefix
{
    return @"./Sns:AddPermissionResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UASNSResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"requestID": @"Sns:ResponseMetadata/Sns:RequestId"
    }];
    return [keyPaths copy];
}

@end

#pragma clang diagnostic pop