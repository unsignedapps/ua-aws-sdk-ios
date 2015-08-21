//
//  UARDSOptionGroupResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSOptionGroupResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UARDSOptionGroup.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UARDSOptionGroupResponse

@synthesize optionGroup=_optionGroup;

+ (NSString *)XPathPrefix
{
    return @"./Rds:OptionGroupResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UARDSResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"optionGroup": @"Rds:OptionGroup"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)optionGroupXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UARDSOptionGroup class]];
}

@end

#pragma clang diagnostic pop