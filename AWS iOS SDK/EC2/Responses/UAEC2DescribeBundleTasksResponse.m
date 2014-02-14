//
//  UAEC2DescribeBundleTasksResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribeBundleTasksResponse.h"
#import "UAEC2BundleTask.h"

@implementation UAEC2DescribeBundleTasksResponse

@synthesize bundleTasks=_bundleTasks;

+ (NSString *)XPathPrefix
{
    return @"./ec2:DescribeBundleTasksResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"bundleTasks": @"ec2:bundleInstanceTasksSet/ec2:item"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)bundleTasksXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAEC2BundleTask class]];
}

@end
