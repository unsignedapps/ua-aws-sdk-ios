//
//  UARDSDBSubnetGroupResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSDBSubnetGroupResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UARDSDBSubnetGroup.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UARDSDBSubnetGroupResponse

@synthesize dBSubnetGroup=_dBSubnetGroup;

+ (NSString *)XPathPrefix
{
    return @"./Rds:DBSubnetGroupResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UARDSResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"dBSubnetGroup": @"Rds:DBSubnetGroup"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)dBSubnetGroupXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UARDSDBSubnetGroup class]];
}

@end

#pragma clang diagnostic pop