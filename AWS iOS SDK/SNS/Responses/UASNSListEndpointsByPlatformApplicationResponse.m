//
//  UASNSListEndpointsByPlatformApplicationResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UASNSListEndpointsByPlatformApplicationResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UASNSEndpoint.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

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

#pragma clang diagnostic pop