//
//  UAEC2ImportVolumeResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2ImportVolumeResponse.h"
#import "UAEC2ConversionTask.h"

@implementation UAEC2ImportVolumeResponse

@synthesize conversionTask=_conversionTask;

+ (NSString *)XPathPrefix
{
    return @"./ec2:ImportVolumeResponse/";
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
  return [NSValueTransformer mtl_XMLTransformerWithModelClass:[UAEC2ConversionTask class]];
}

@end
