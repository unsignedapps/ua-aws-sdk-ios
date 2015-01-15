//
//  UASQSChangeMessageVisibilityResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UASQSChangeMessageVisibilityResponse.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UASQSChangeMessageVisibilityResponse

@synthesize requestID=_requestID;

+ (NSString *)XPathPrefix
{
    return @"./sqs:ChangeMessageVisibilityResponse/";
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