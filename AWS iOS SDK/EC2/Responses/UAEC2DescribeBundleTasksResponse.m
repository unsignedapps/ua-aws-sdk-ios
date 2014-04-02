//
//  UAEC2DescribeBundleTasksResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
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

- (UAEC2BundleTask *)bundleTaskAtIndex:(NSUInteger)index
{
    if (self.bundleTasks == nil || index >= ([self.bundleTasks count]-1))
        return nil;

    return [self.bundleTasks objectAtIndex:index];
}

+ (NSValueTransformer *)bundleTasksXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2BundleTask class]];
}

@end
