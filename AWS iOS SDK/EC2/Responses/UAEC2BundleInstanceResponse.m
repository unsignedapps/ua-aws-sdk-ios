//
//  UAEC2BundleInstanceResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2BundleInstanceResponse.h"
#import "UAEC2BundleTask.h"

@implementation UAEC2BundleInstanceResponse

@synthesize bundleTask=_bundleTask;

+ (NSString *)XPathPrefix
{
    return @"./ec2:BundleInstanceResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"bundleTask": @"ec2:bundleInstanceTask"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)bundleTaskXMLTransformer
{
  return [NSValueTransformer mtl_XMLTransformerWithModelClass:[UAEC2BundleTask class]];
}

@end
