//
//  UAEC2ImportInstanceResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2ImportInstanceResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2ConversionTask.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2ImportInstanceResponse

@synthesize conversionTask=_conversionTask;

+ (NSString *)XPathPrefix
{
    return @"./ec2:ImportInstanceResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"conversionTask": @"ec2:conversionTask"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)conversionTaskXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UAEC2ConversionTask class]];
}

@end

#pragma clang diagnostic pop