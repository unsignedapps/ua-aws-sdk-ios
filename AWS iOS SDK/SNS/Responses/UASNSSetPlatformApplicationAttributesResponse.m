//
//  UASNSSetPlatformApplicationAttributesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UASNSSetPlatformApplicationAttributesResponse.h"

@implementation UASNSSetPlatformApplicationAttributesResponse

@synthesize requestID=_requestID;

+ (NSString *)XPathPrefix
{
    return @"./Sns:SetPlatformApplicationAttributesResponse/";
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
