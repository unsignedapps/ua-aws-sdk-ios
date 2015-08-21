//
//  UARDSEngineDefaultsResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSEngineDefaultsResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UARDSEngineDefaults.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UARDSEngineDefaultsResponse

@synthesize engineDefaults=_engineDefaults;

+ (NSString *)XPathPrefix
{
    return @"./Rds:EngineDefaultsResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UARDSResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"engineDefaults": @"Rds:EngineDefaults"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)engineDefaultsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UARDSEngineDefaults class]];
}

@end

#pragma clang diagnostic pop