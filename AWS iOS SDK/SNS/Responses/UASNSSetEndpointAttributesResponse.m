//
//  UASNSSetEndpointAttributesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UASNSSetEndpointAttributesResponse.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UASNSSetEndpointAttributesResponse

@synthesize requestID=_requestID;

+ (NSString *)XPathPrefix
{
    return @"./Sns:SetEndpointAttributesResponse/";
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