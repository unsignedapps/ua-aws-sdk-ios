//
//  UARDSDBParameterGroupResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSDBParameterGroupResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UARDSDBParameterGroup.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UARDSDBParameterGroupResponse

@synthesize dBParameterGroup=_dBParameterGroup;

+ (NSString *)XPathPrefix
{
    return @"./Rds:DBParameterGroupResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UARDSResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"dBParameterGroup": @"Rds:DBParameterGroup"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)dBParameterGroupXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UARDSDBParameterGroup class]];
}

@end

#pragma clang diagnostic pop