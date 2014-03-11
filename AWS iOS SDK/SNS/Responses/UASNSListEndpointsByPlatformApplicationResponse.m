//
//  UASNSListEndpointsByPlatformApplicationResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UASNSListEndpointsByPlatformApplicationResponse.h"
#import "UASNSEndpoint.h"

@implementation UASNSListEndpointsByPlatformApplicationResponse

@synthesize endpoints=_endpoints, nextToken=_nextToken;

+ (NSString *)XPathPrefix
{
    return @"./Sns:ListEndpointsByPlatformApplicationResponse/Sns:ListEndpointsByPlatformApplicationResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UASNSResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"endpoints": @"Sns:Endpoints/Sns:member",
        @"nextToken": @"Sns:NextToken"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)endpointsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UASNSEndpoint class]];
}

@end
