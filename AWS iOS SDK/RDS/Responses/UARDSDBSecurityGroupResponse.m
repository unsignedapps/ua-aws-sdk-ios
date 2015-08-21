//
//  UARDSDBSecurityGroupResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSDBSecurityGroupResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UARDSDBSecurityGroup.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UARDSDBSecurityGroupResponse

@synthesize dBSecurityGroup=_dBSecurityGroup;

+ (NSString *)XPathPrefix
{
    return @"./Rds:DBSecurityGroupResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UARDSResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"dBSecurityGroup": @"Rds:DBSecurityGroup"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)dBSecurityGroupXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UARDSDBSecurityGroup class]];
}

@end

#pragma clang diagnostic pop