//
//  UASQSAddPermissionResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UASQSAddPermissionResponse.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UASQSAddPermissionResponse

@synthesize requestID=_requestID;

+ (NSString *)XPathPrefix
{
    return @"./sqs:AddPermissionResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UASQSResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"requestID": @"sqs:ResponseMetadata/sqs:RequestId"
    }];
    return [keyPaths copy];
}

@end

#pragma clang diagnostic pop