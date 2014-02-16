//
//  UASNSCreateEndpointResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UASNSCreateEndpointResponse.h"

@implementation UASNSCreateEndpointResponse

@synthesize endpointARN=_endpointARN;

+ (NSString *)XPathPrefix
{
    return @"./Sns:CreateEndpointResponse/Sns:CreateEndpointResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UASNSResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"endpointARN": @"Sns:EndpointArn"
    }];
    return [keyPaths copy];
}

@end
